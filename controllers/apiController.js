exports.assignFason = (req, res) => {
    const { firma, adet, tutar, tarih, mod } = req.body;
    
    // Çakışma Kontrolü (Eski kodundaki mantık)
    if (mod && mod.length > 0) {
        const currentAssigned = req.session.assigned_models || [];
        const overlaps = mod.filter(m => currentAssigned.includes(m));
        if (overlaps.length > 0) {
            return res.status(400).json({ error: `Şu modeller zaten atandı: ${overlaps.join(', ')}` });
        }
    }

    req.session.assignments = req.session.assignments || [];
    req.session.assignments.push({ 
        firma, 
        adet: parseInt(adet), 
        tutar: parseFloat(tutar), 
        tarih, 
        mod: mod || [] 
    });

    if (mod) {
        req.session.assigned_models = req.session.assigned_models || [];
        req.session.assigned_models.push(...mod);
    }
    
    res.json({ status: 'ok' });
};

exports.assignFabric = (req, res) => {
    const { firma, model, renk, tedarikci, fiyat, miktar } = req.body;
    
    req.session.fabric_assignments = req.session.fabric_assignments || [];
    
    // Varsa eskisini sil (Update mantığı)
    req.session.fabric_assignments = req.session.fabric_assignments.filter(a => 
        !(a.firma === firma && a.model === model && a.renk === renk)
    );
    
    const numFiyat = parseFloat(fiyat);
    const numMiktar = parseFloat(miktar);
    const numTutar = numFiyat * numMiktar;

    req.session.fabric_assignments.push({
        firma, model, renk, tedarikci, 
        fiyat: numFiyat, 
        miktar: numMiktar,
        tutar: numTutar
    });
    
    res.json({ status: 'ok' });
};

exports.resetSession = (req, res) => {
    req.session.assignments = [];
    req.session.assigned_models = [];
    req.session.fabric_assignments = [];
    res.json({ status: 'ok' });
};

// Bu fonksiyonu şimdilik boş bırakabiliriz veya kaldırabiliriz, 
// çünkü viewController içinde zaten hesaplama yapılıyor.
exports.hesaplaFasonVeDoluluk = (req, res) => { res.json({msg: 'OK'}); };
exports.getKumasFiyatlari = (req, res) => { res.json({msg: 'OK'}); };