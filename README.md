# Tekstil Karar Destek Sistemi (KDS)

Bu proje, tekstil üretim süreçlerini yönetmek, maliyet analizi yapmak, fason takibi sağlamak ve kapasite planlaması gerçekleştirmek amacıyla geliştirilmiş bir **Karar Destek Sistemi**dir. Node.js ve Express.js kullanılarak **MVC (Model-View-Controller)** mimarisine uygun olarak tasarlanmıştır.

## 📋 Proje Özellikleri

* **Fason Takibi:** Fabrika kapasitesini aşan üretimlerin dış atölyelere (fason) atanması.
* **Maliyet Analizi:** Kumaş, kesim ve dikim maliyetlerinin firma bazlı hesaplanması.
* **Kapasite Kontrolü:** Atölye kapasitelerinin dinamik kontrolü ve aşım engelleme.
* **Dinamik Raporlama:** EJS ile görselleştirilmiş veri panelleri.

## 🛠️ Kurulum Adımları

1.  Projeyi bilgisayarınıza indirin:
    ```bash
    git clone <https://github.com/Furkan-Yel/KDS-Proje>
    ```
2.  Gerekli paketleri yükleyin:
    ```bash
    npm install
    ```
3.  Veritabanını oluşturun ve `.env` dosyasını ayarlayın:
    * `.env.example` dosyasının adını `.env` yapın.
    * İçerisine kendi MySQL bilgilerinizi girin.
4.  Projeyi başlatın:
    ```bash
    node app.js
    ```
5.  Tarayıcıda `http://localhost:3000` adresine gidin.
    * **Kullanıcı Adı:** furkan
    * **Şifre:** furkan123

## 💡 Senaryo ve İş Kuralları (Business Rules)

Projede iki temel özel iş kuralı uygulanmıştır:

**1. Fason Kapasite ve Limit Kontrolü**
Sistem, kullanıcı bir fason firmasına iş atamak istediğinde, ilgili firmanın anlık doluluk oranını ve maksimum kapasitesini veritabanından kontrol eder. Eğer atanan adet, firmanın kalan kapasitesini aşıyorsa sistem işlemi reddeder ve kullanıcıya uyarı döner. (Stok/Kapasite Yetersizliği Senaryosu).

**2. Hiyerarşik Kumaş Fiyatlandırma Algoritması**
Maliyet hesaplanırken sistem akıllı bir önceliklendirme yapar:
1.  Önce kullanıcı o **Model ve Renk** için özel bir tedarikçi seçmiş mi? (Evetse, o fiyatı al).
2.  Seçmemişse, o **Renk** için genel bir tedarikçi seçilmiş mi? (Evetse, o fiyatı al).
3.  Hiçbir seçim yoksa, sistem o kaliteye uygun **en ucuz tedarikçiyi** otomatik bulur ve maliyete yansıtır.

## 🔗 API Endpoint Listesi

Uygulama RESTful prensiplere uygun olarak aşağıdaki uç noktaları kullanır:

| Metot | Endpoint | Açıklama |
| :--- | :--- | :--- |
| `GET` | `/` | Ana sayfa (Login kontrolü) |
| `GET` | `/login` | Giriş ekranı |
| `POST` | `/login` | Kullanıcı doğrulama |
| `GET` | `/logout` | Oturum kapatma |
| `POST` | `/api/assign` | Fason firmasına iş atama (Kapasite kontrollü) |
| `POST` | `/api/assign-fabric` | Kumaş tedarikçisi seçimi kaydetme |
| `POST` | `/api/reset` | Tüm simülasyon verilerini sıfırlama |

## 📁 Mimari Yapı (MVC)

* `models/`: Veritabanı sorguları ve veri yapısı.
* `views/`: EJS arayüz dosyaları.
* `controllers/`: İş mantığı, hesaplamalar ve kurallar.
* `routes/`: URL yönlendirmeleri.
* `config/`: Veritabanı bağlantı ayarları.

---
**Geliştirici:** [Adın Soyadın]