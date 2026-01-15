const db = require('../config/db');

class KdsModel {
    // Fabrikanın kapasite bilgisini getir (Örn: Ayarlar tablosundan)
    static async getFabrikaKapasitesi() {
        // Eğer veritabanında bir ayar tablosu yoksa şimdilik sabit 1000 döndürüyoruz.
        // İleride: return db.query('SELECT kapasite FROM ayarlar LIMIT 1');
        return 1000; 
    }

    // Sipariş verilerini kaydetmek istersen buraya fonksiyon ekleyebilirsin
    static async siparisKaydet(talep, fason, uretim) {
        // Örnek: INSERT INTO siparisler ...
    }
}

module.exports = KdsModel;