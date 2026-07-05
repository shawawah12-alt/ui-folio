<div align="center">

# ui-folio

A curated shelf of mobile UI kits — Flutter, React Native, SwiftUI, Jetpack Compose.

</div>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/React_Native-20232A?style=flat-square&logo=react&logoColor=61DAFB" alt="React Native">
  <img src="https://img.shields.io/badge/SwiftUI-FA7343?style=flat-square&logo=swift&logoColor=white" alt="SwiftUI">
  <img src="https://img.shields.io/badge/Jetpack_Compose-4285F4?style=flat-square&logo=jetpackcompose&logoColor=white" alt="Jetpack Compose">
  <br>
  <img src="https://img.shields.io/github/stars/shawawah12-alt/ui-folio?style=flat-square&color=FFD700" alt="Stars">
  <img src="https://img.shields.io/github/forks/shawawah12-alt/ui-folio?style=flat-square&color=9CF" alt="Forks">
  <img src="https://img.shields.io/github/last-commit/shawawah12-alt/ui-folio?style=flat-square&color=brightgreen" alt="Last commit">
  <img src="https://img.shields.io/github/license/shawawah12-alt/ui-folio?style=flat-square&color=yellow" alt="License">
  <img src="https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square" alt="PRs welcome">
</p>

---

Kumpulan UI kit mobile siap pakai, lintas framework. Daripada mulai dari blank page tiap project, ambil satu dari sini, sesuaikan, jalan.

Setiap kit punya kode lengkap, screenshot, dan catatan customisasi. Tidak ada boilerplate yang dipaksakan, tidak ada template AI — cuma kode biasa yang ditulis tangan.

---

## Table of contents

- [Kits](#kits)
- [Categories](#categories)
- [How to use](#how-to-use)
- [Folder layout](#folder-layout)
- [Contributing](#contributing)
- [Roadmap](#roadmap)
- [License](#license)

---

## Kits

### 1. Login screen — minimalist (Flutter)

Login ala Swiss. Putih, hitam, satu accent, tanpa gradient, tanpa shadow. Input pakai border bawah 1px, bukan kotak. Cocok untuk aplikasi yang ingin terlihat tenang dan terorganisir.

<p align="center">
  <img src="assets/previews/flutter-login-minimalist.png" width="280" alt="Flutter login minimalist preview">
</p>

- Background putih, accent `#111111`
- Tipografi Inter
- Input border bawah, bukan kotak
- Tombol solid hitam, elevation 0
- Dark mode ikut sistem

Lihat di [`flutter/login-screen-minimalist/`](./flutter/login-screen-minimalist).

---

### 2. Login screen — warm dark (React Native)

Login dengan palet coklat hangat dark mode. Background warm near-black `#1A1714`, accent terracotta `#C66B3D`. Tanpa gradient, tanpa blur, tanpa shadow. Card polos dengan border tipis.

<p align="center">
  <img src="assets/previews/rn-login-warm.png" width="280" alt="React Native warm dark login preview">
</p>

- Background warm dark `#1A1714`
- Card `#252019` dengan border `#34302A`
- Accent terracotta `#C66B3D`
- SSO buttons (Google, Apple) outline tipis
- Dark only (memang sengaja)

Lihat di [`react-native/login-screen-warm/`](./react-native/login-screen-warm).

---

### 3. Profile screen — iOS classic (SwiftUI)

Profile screen ala profile bawaan iOS. Putih bersih, navbar tipis 44pt, avatar centered, stats row dengan vertical divider, dan grid postingan 3 kolom. Tanpa cover image, tanpa gradient.

<p align="center">
  <img src="assets/previews/swiftui-profile-screen.png" width="280" alt="SwiftUI profile screen preview">
</p>

- Background putih
- Accent iOS blue `#007AFF`
- Tipografi SF Pro
- Navbar 44pt dengan bottom border 0.5px
- Stats row dengan vertical divider 1px
- Grid 3 kolom dengan gap 1px

Lihat di [`swiftui/profile-screen-ios/`](./swiftui/profile-screen-ios).

---

### 4. Chat UI — monochrome (Jetpack Compose)

Chat screen monochrome. Pesan terkirim pakai bubble charcoal `#1A1A1A`, pesan diterima pakai light gray `#F4F4F6`. Background putih, border tipis 1px di topbar dan input bar. Tanpa warna Material 3, tanpa gradient.

<p align="center">
  <img src="assets/previews/compose-chat-monochrome.png" width="280" alt="Jetpack Compose monochrome chat preview">
</p>

- Bubble terkirim `#1A1A1A` dengan teks putih
- Bubble diterima `#F4F4F6` dengan teks gelap
- Border 1px `#ECECEC`
- Topbar dengan avatar + nama + status
- Input bar dengan attach + send icon
- Typing indicator

Lihat di [`jetpack-compose/chat-ui-monochrome/`](./jetpack-compose/chat-ui-monochrome).

---

## Categories

Repo ini akan terus diisi. Roadmap kategori:

- **Auth & onboarding** — login, register, OTP, onboarding carousel, biometric
- **Dashboard & analytics** — admin panel, sales analytics, crypto wallet, fitness tracker
- **E-commerce** — product listing, detail, cart, checkout, order tracking
- **Profile & social** — profile page, settings, chat, feed, story viewer
- **Navigation** — bottom bar, drawer, tab bar, FAB menu, bottom sheet
- **Misc** — weather, food delivery, booking, news, banking

---

## How to use

Clone repo, masuk folder kit yang kamu mau, ikuti README di sana.

```bash
git clone https://github.com/shawawah12-alt/ui-folio.git
cd ui-folio/flutter/login-screen-minimalist
flutter pub get
flutter run
```

Atau unduh folder tertentu saja lewat [DownGit](https://downgit.github.io/) kalau gak mau clone semuanya.

---

## Folder layout

```
ui-folio/
├── flutter/
│   └── login-screen-minimalist/
├── react-native/
│   └── login-screen-warm/
├── swiftui/
│   └── profile-screen-ios/
├── jetpack-compose/
│   └── chat-ui-monochrome/
├── assets/
│   └── previews/
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
└── LICENSE
```

---

## Contributing

Fork, bikin branch, tambah kit atau perbaiki yang ada, buka PR. Aturan lengkap di [`CONTRIBUTING.md`](./CONTRIBUTING.md).

Beberapa hal yang perlu diingat:

- Tulis kode sendiri, jangan salin dari repo berlisensi restriktif
- Pixel-perfect, responsive, accessible — bukan cuma cantik di screenshot
- Dark mode wajib
- Sertakan screenshot atau GIF di README kit kamu
- Hindari gradient warna mencolok (biru-merah, ungu-pink) — pilih palet yang tenang

---

## Roadmap

- [x] 4 starter kit (satu per framework)
- [ ] 20 kit Flutter
- [ ] 20 kit React Native
- [ ] 20 kit SwiftUI
- [ ] 20 kit Jetpack Compose
- [ ] Kotlin Multiplatform
- [ ] .NET MAUI
- [ ] Website showcase

---

## License

MIT. Bebas dipakai untuk apa saja, personal maupun komersial. Sertakan atribusi lisensi saja.

Lihat [`LICENSE`](./LICENSE) untuk teks lengkapnya.

---

<div align="center">

Built by hand. Open an issue if something breaks, or a discussion if you have an idea.

</div>
