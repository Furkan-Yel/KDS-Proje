const express = require('express');
const router = express.Router();
const viewController = require('../controllers/viewController');
const authController = require('../controllers/authController');

// --- 1. MİSAFİR ROTALARI (Giriş yapmadan erişilenler) ---

// Giriş Sayfası Göster
router.get('/login', authController.getLogin);

// Giriş Yapma İşlemi (POST)
router.post('/login', authController.postLogin);

// Çıkış Yapma
router.get('/logout', authController.logout);


// --- 2. KORUMALI ROTALAR (Sadece giriş yapanlar) ---

// Ana Sayfa (Dashboard)
router.get('/', (req, res, next) => {
    // DÜZELTME BURADA YAPILDI: 
    // Eski projendeki değişken adı 'loggedIn' idi. 'isLoggedIn' değil.
    if (!req.session || !req.session.loggedIn) {
        return res.redirect('/login');
    }
    next();
}, viewController.getDashboard);

// Eğer eski alışkanlıkla '/app' yazarsan ana sayfaya yönlendirsin
router.get('/app', (req, res) => {
    res.redirect('/');
});

module.exports = router;