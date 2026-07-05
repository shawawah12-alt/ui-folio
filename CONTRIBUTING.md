# 🤝 Panduan Kontribusi / Contributing Guide

Terima kasih sudah tertarik berkontribusi pada **Awesome Mobile UI Kit**! Dokumen ini menjelaskan alur kerja dan aturan yang harus diikuti supaya kontribusi kamu diterima dengan lancar.

Thank you for your interest in contributing to **Awesome Mobile UI Kit**! This document explains the workflow and rules to follow so your contribution gets merged smoothly.

---

## 🌐 Bahasa / Language

Kontribusi bisa dalam **Bahasa Indonesia** atau **English**. Komentar kode usahakan English supaya bisa dibaca developer global.
Contributions can be in **Indonesian** or **English**. Code comments should preferably be in English so global developers can read them.

---

## ✅ Cara Kontribusi / How to Contribute

### 1. Fork & Clone
```bash
git clone https://github.com/<username-mu>/awesome-mobile-ui-kit.git
cd awesome-mobile-ui-kit
git remote add upstream https://github.com/shawawah12-alt/awesome-mobile-ui-kit.git
```

### 2. Buat Branch Baru / Create a New Branch
```bash
git checkout -b feat/nama-ui-kit-kamu
```

### 3. Tambahkan UI Kit Kamu / Add Your UI Kit
Struktur folder wajib:
```
<framework>/
└── nama-ui-kit/
    ├── README.md          # Penjelasan + screenshot
    ├── source/            # Kode sumber
    └── preview.gif        # Demo animasi (opsional tapi disarankan)
```

### 4. Commit dengan Conventional Commits
```bash
git commit -m "feat(flutter): add neumorphism login screen"
```

### 5. Push & Buka Pull Request
```bash
git push origin feat/nama-ui-kit-kamu
```
Lalu buka PR ke branch `main` repo utama.

---

## 📋 Aturan UI Kit / UI Kit Rules

- ✅ **Original** — jangan upload UI kit yang udah ada di repo lain tanpa izin
- ✅ **Pixel-perfect** — hindari layout yang berantakan di layar kecil
- ✅ **Accessible** — kontras warna cukup, ukuran font minimal 14sp
- ✅ **Responsive** — harus jalan di iPhone SE sampai iPad Pro / Android foldable
- ✅ **Dark mode ready** — wajib support dark mode
- ✅ **Tidak ada AI-generated code** — sesuai prinsip repo, semua kode ditulis manual
- ❌ **Dilarang hardcode** API key, token, atau data pribadi
- ❌ **Dilarang** pakai asset berbayar tanpa lisensi

---

## 🎨 Naming Convention

Format nama folder:
```
<tipe-ui>-<gaya>-<framework-spesifik>
```
Contoh:
- `login-screen-glassmorphism`
- `dashboard-analytics-material3`
- `onboarding-carousel-ios-native`

---

## 🔍 Review Process

- Maintainer akan review dalam **3–7 hari**
- Kalau ada perubahan, kami kasih comment di PR
- Setelah merge, kamu masuk ke **Contributors Hall of Fame** di README

---

## ❓ Butuh Bantuan?

Buka [issue baru](https://github.com/shawawah12-alt/awesome-mobile-ui-kit/issues/new) dengan label `question` kalau bingung. Kami tidak gigit kok 😄

---

<div align="center">

**Happy coding! 🚀**

</div>
