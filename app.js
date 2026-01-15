const express = require('express');
const path = require('path');
const dotenv = require('dotenv');
const session = require('express-session');

// Ortam değişkenlerini yükle
dotenv.config();

const app = express();

// Middleware (Gelen veriyi okumak için)
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(session({
    secret: process.env.SESSION_SECRET || 'gizli_anahtar',
    resave: false,
    saveUninitialized: false
}));

// Statik Dosyalar (CSS, JS, Resimler)
app.use(express.static(path.join(__dirname, 'public')));

// View Engine (EJS)
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Rotaları Dahil Et
const webRoutes = require('./routes/webRoutes');
const apiRoutes = require('./routes/apiRoutes');

// Rotaları Kullan
app.use('/', webRoutes);      // Arayüz rotaları
app.use('/api', apiRoutes);   // API rotaları (Fetch işlemleri için)

// Sunucuyu Başlat
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Sunucu ${PORT} portunda MVC yapısıyla çalışıyor!`);
    console.log(`👉 http://localhost:${PORT}`);
});