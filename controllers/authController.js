exports.getLogin = (req, res) => {
    if (req.session && req.session.loggedIn) {
        return res.redirect('/');
    }
    // DİKKAT: views/login.ejs 'error' bekliyor, 'errorMessage' değil.
    res.render('login', { 
        error: null 
    });
};

exports.postLogin = (req, res) => {
    const { username, password } = req.body;

    // Senin orijinal kullanıcı bilgilerin:
    if (username === 'furkan' && password === 'furkan123') {
        req.session.loggedIn = true;
        req.session.username = 'Furkan';
        
        // Session listelerini başlat (Hata almamak için)
        req.session.assignments = req.session.assignments || [];
        req.session.assigned_models = req.session.assigned_models || [];
        req.session.fabric_assignments = req.session.fabric_assignments || [];

        req.session.save(err => {
            if(err) console.log(err);
            res.redirect('/');
        });
    } else {
        // Hatalı giriş durumunda 'error' değişkenini gönderiyoruz
        res.render('login', {
            error: '⚠️ Hatalı kullanıcı adı veya şifre!'
        });
    }
};

exports.logout = (req, res) => {
    req.session.destroy(() => {
        res.redirect('/login');
    });
};