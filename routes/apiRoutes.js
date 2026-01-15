const express = require('express');
const router = express.Router();
const apiController = require('../controllers/apiController');

// Mevcut Rotalar (Varsa kalsın)
router.post('/hesapla', apiController.hesaplaFasonVeDoluluk);
router.get('/kumas-fiyatlari', apiController.getKumasFiyatlari);

// --- YENİ EKLENECEK ROTALAR ---

// Layout.ejs dosyasındaki fetch('/api/assign', ...) buraya gelir:
router.post('/assign', apiController.assignFason);

// Layout.ejs dosyasındaki fetch('/api/assign-fabric', ...) buraya gelir:
router.post('/assign-fabric', apiController.assignFabric);

// Layout.ejs dosyasındaki fetch('/api/reset', ...) buraya gelir:
router.post('/reset', apiController.resetSession);

module.exports = router;