const db = require('../config/db');

// --- YARDIMCI FONKSİYONLAR (Eski kodundan alındı) ---
const cleanFloat = (val) => {
    if (!val) return 0.0;
    if (typeof val === 'number') return val;
    return parseFloat(val.toString().replace(/\./g, '').replace(',', '.'));
};

const formatTr = (val) => {
    if (val === null || val === undefined) return "0";
    return new Intl.NumberFormat('tr-TR', { maximumFractionDigits: 0 }).format(val);
};

exports.getDashboard = async (req, res) => {
    // 1. Veri nesnesini hazırla
    const data = {};

    try {
        // --- A. TEMEL VERİLERİ ÇEK ---
        const [dikim] = await db.query("SELECT * FROM dikim");
        data.dikim = dikim;

        const [makine] = await db.query("SELECT * FROM makine");
        data.makine = makine;

        const [tedarik] = await db.query("SELECT * FROM tedarik");
        data.tedarik = tedarik;

        const [firma] = await db.query("SELECT * FROM firma");
        data.firmaStats = {};
        firma.forEach(row => { data.firmaStats[row['COL 1']] = row['COL 2']; });

        const [gerekenKumas] = await db.query("SELECT * FROM gereken_kumas");
        data.gerekenKumas = gerekenKumas;

        const [kesim] = await db.query("SELECT * FROM kesim");
        data.kesim = kesim;

        const [urun] = await db.query("SELECT * FROM urun");
        data.models = urun;

        // --- B. DİNAMİK TABLOLAR (Kumaş 1, 2, 3...) ---
        data.kumasTedarikcileri = [];
        for (let i = 1; i <= 3; i++) {
            try {
                const [rows] = await db.query(`SELECT * FROM kumas_${i}`);
                const rowsWithId = rows.map(r => ({ ...r, tedarikci: `Tedarikçi ${i}` }));
                data.kumasTedarikcileri = data.kumasTedarikcileri.concat(rowsWithId);
            } catch (e) {
                // Tablo yoksa hata verme, devam et
            }
        }

        // --- C. FİNANSAL GİDERLER ---
        const [aylikGiderler] = await db.query("SELECT * FROM aylik_giderler");
        let sabitGiderToplam = 0;
        data.giderTablosu = aylikGiderler.map(row => {
            let val = cleanFloat(row['COL 2']);
            sabitGiderToplam += val;
            return { kalem: row['COL 1'], tutar: val };
        });
        data.sabitGiderToplam = sabitGiderToplam;

        // --- D. MASTER HESAPLAMA (Kar/Zarar Mantığı) ---
        const firmaOzet = {}; 
        
        // 1. Gelir Hesapla
        urun.forEach(u => {
            const fAd = u['Firma Adı'];
            const tRow = tedarik.find(t => t['Firma Adı'] === fAd);
            const birimFiyat = tRow ? tRow['Birim Başına Ücret (TL)'] : 0;
            if (!firmaOzet[fAd]) firmaOzet[fAd] = { gelir: 0, kumas: 0, kesim: 0 };
            firmaOzet[fAd].gelir += u['İstenen Adet'] * birimFiyat;
        });

        // 2. Kesim Gideri Hesapla
        kesim.forEach(k => {
            const fAd = k['Firma Adı'];
            if (!firmaOzet[fAd]) firmaOzet[fAd] = { gelir: 0, kumas: 0, kesim: 0 };
            firmaOzet[fAd].kesim += k['Ödenmesi Gereken Tutar (TL)'];
        });

        // 3. Kumaş Maliyeti Hesapla (Senin Özel Algoritman)
        const seciliKumaslar = req.session.fabric_assignments || [];

        gerekenKumas.forEach(g => {
            const fAd = g['Firma Adı'];
            const renk = g['Gereken Kumaş Rengi'];
            const model = g['Model Kodu'];
            const miktar = g['Gereken Miktar (kg)'];
            
            // Hiyerarşik Kontrol: Önce Model Özel, Yoksa Genel (ALL)
            let assignment = seciliKumaslar.find(a => a.firma === fAd && a.renk === renk && a.model === model);
            if (!assignment) {
                assignment = seciliKumaslar.find(a => a.firma === fAd && a.renk === renk && a.model === 'ALL');
            }
            
            let birimMaliyet = 0;
            if (assignment) {
                birimMaliyet = assignment.fiyat;
            } else {
                // Otomatik en ucuz fiyatı bulma mantığı
                const requiredQ = g['Kabul Edilen Kumaş Kalitesi'].split(',').map(s => s.trim().toUpperCase());
                let validSuppliers = data.kumasTedarikcileri.filter(x => 
                    x['Kumaş Rengi'] === renk && requiredQ.includes(x['Kalite'].toUpperCase())
                );
                if (validSuppliers.length > 0) {
                    birimMaliyet = validSuppliers.reduce((s, x) => s + x['Birim Fiyat (TL/kg)'], 0) / validSuppliers.length;
                }
            }

            if (!firmaOzet[fAd]) firmaOzet[fAd] = { gelir: 0, kumas: 0, kesim: 0 };
            firmaOzet[fAd].kumas += miktar * birimMaliyet;
        });

        // Özeti Array'e çevir
        data.finansOzet = Object.keys(firmaOzet).map(key => ({
            firma: key,
            ...firmaOzet[key],
            toplamDegisken: firmaOzet[key].kumas + firmaOzet[key].kesim,
            brutKar: firmaOzet[key].gelir - (firmaOzet[key].kumas + firmaOzet[key].kesim)
        }));

        // --- E. FASON ---
        const fasonData = [];
        const fasonLimits = {};
        for (let i = 1; i <= 3; i++) {
            try {
                const [rows] = await db.query(`SELECT * FROM fason_${i}`);
                let maxLim = 0;
                rows.forEach(row => {
                    // Regex ile sayı ayıklama (Örn: "5000 Adet" -> 5000)
                    const match = row['Dikim Adetleri'].match(/(\d+)/);
                    const val = match ? parseInt(match[0]) : 0;
                    
                    row.limitVal = val * 1000; // Senin mantığın: tablodaki sayıyı 1000 ile çarpıyor
                    if(row.limitVal > maxLim) maxLim = row.limitVal;
                    
                    row.firma = `Fason ${i}`;
                    fasonData.push(row);
                });
                fasonLimits[`Fason ${i}`] = maxLim;
            } catch (e) {}
        }
        data.fasonOptions = fasonData;
        data.fasonLimits = fasonLimits;

        // Fason Session Durumu
        let totalFasonGider = 0;
        const currentFasonStatus = {};
        (req.session.assignments || []).forEach(a => {
            totalFasonGider += a.tutar;
            if(!currentFasonStatus[a.firma]) currentFasonStatus[a.firma] = {adet: 0, tutar: 0, modeller: [], tarih: a.tarih};
            currentFasonStatus[a.firma].adet += a.adet;
            currentFasonStatus[a.firma].tutar += a.tutar;
            if(a.mod) currentFasonStatus[a.firma].modeller.push(...a.mod);
        });
        
        data.totalFasonGider = totalFasonGider;
        data.currentFasonStatus = currentFasonStatus;
        
        // Session verilerini aktar
        data.sessionAssignments = req.session.assignments || [];
        data.assignedModels = req.session.assigned_models || [];
        data.fabricAssignments = req.session.fabric_assignments || [];

        // Global KPI
        data.globalAylik = cleanFloat(data.firmaStats['Aylık Üretim'] || '0');
        data.globalDonemlik = cleanFloat(data.firmaStats['Dönemlik Üretim'] || '0');

        // Sayfayı Render Et
        res.render('layout', { 
            pageTitle: 'KDS Dashboard',
            user: req.session.username || 'Misafir',
            data: data,
            formatTr: formatTr,
            cleanFloat: cleanFloat
        });

    } catch (err) {
        console.error("Veritabanı Hatası:", err);
        res.status(500).send("Veritabanı bağlantı hatası oluştu: " + err.message);
    }
};