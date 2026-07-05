<div align="center">

# ui-folio

Koleksi UI kit mobile siap pakai lintas framework — Flutter, React Native, SwiftUI, Jetpack Compose.
A curated shelf of mobile UI kits across Flutter, React Native, SwiftUI, and Jetpack Compose.

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

# 🇮🇩 Versi Bahasa Indonesia

Kumpulan UI kit mobile siap pakai, lintas framework. Daripada mulai dari blank page tiap project, ambil satu dari sini, sesuaikan, dan jalan.

Setiap kit punya kode lengkap (`*.dart`, `*.tsx`, `*.swift`, `*.kt` — bukan cuma mockup), screenshot PNG tajam (760×1520 @ 2x retina), dan catatan customisasi. Tidak ada template AI — cuma kode biasa yang ditulis tangan dengan palet yang dipilih satu per satu.

## Daftar isi

- [Kit Flutter](#kit-flutter)
- [Kit React Native](#kit-react-native)
- [Kit SwiftUI](#kit-swiftui)
- [Kit Jetpack Compose](#kit-jetpack-compose)
- [Cara pakai](#cara-pakai)
- [Struktur folder](#struktur-folder)
- [Berkontribusi](#berkontribusi)
- [Roadmap](#roadmap)
- [Lisensi](#lisensi)

## Kit Flutter

### 1. Login screen — minimalist

Login ala Swiss. Putih, hitam, satu accent, tanpa gradient, tanpa shadow. Input pakai border bawah 1px.

<p align="center">
  <img src="assets/previews/flutter-login-minimalist.png" width="240" alt="Flutter login minimalist">
</p>

Lihat di [`flutter/login-screen-minimalist/`](./flutter/login-screen-minimalist).

<details>
<summary><b>Lihat 4 kit Flutter lainnya</b></summary>
<br>

#### 2. Onboarding carousel

3 slide dengan ilustrasi sirkular (sage/sand/sky) dan dots indicator animated. Tombol "Lewati" di kanan atas, berubah jadi "Mulai" di slide terakhir.

<p align="center">
  <img src="assets/previews/flutter-onboarding.png" width="240" alt="Flutter onboarding">
</p>

Lihat di [`flutter/onboarding-carousel/`](./flutter/onboarding-carousel).

#### 3. Dashboard — finance

Dashboard keuangan dengan animated balance counter, dua stat card, dan bar chart mingguan. Palet slate dark `#0F172A`.

<p align="center">
  <img src="assets/previews/flutter-dashboard.png" width="240" alt="Flutter dashboard">
</p>

Lihat di [`flutter/dashboard-finance/`](./flutter/dashboard-finance).

#### 4. Weather forecast

Weather app dengan gradient sky lembut (light blue → cream), hourly forecast 5 jam, dan weekly forecast dengan bar range suhu. Semua ikon cuaca pakai SVG, bukan emoji.

<p align="center">
  <img src="assets/previews/flutter-weather.png" width="240" alt="Flutter weather">
</p>

Lihat di [`flutter/weather-forecast/`](./flutter/weather-forecast).

#### 5. Settings — paper

Settings screen ala paper. Palet cream `#FAF7F0` dengan accent sand dan toggle golden `#D4A437`. Group cards dengan divider tipis.

<p align="center">
  <img src="assets/previews/flutter-settings.png" width="240" alt="Flutter settings">
</p>

Lihat di [`flutter/settings-paper/`](./flutter/settings-paper).

</details>

## Kit React Native

### 1. Login screen — warm dark

Login dengan palet coklat hangat dark mode. Background warm near-black `#1A1714`, accent terracotta `#C66B3D`.

<p align="center">
  <img src="assets/previews/rn-login-warm.png" width="240" alt="RN login warm">
</p>

Lihat di [`react-native/login-screen-warm/`](./react-native/login-screen-warm).

<details>
<summary><b>Lihat 4 kit React Native lainnya</b></summary>
<br>

#### 2. E-commerce product detail

Product detail dengan gallery 3 slide, rating stars, quantity selector, dan bottom bar (favorite + add to cart). Palet sand/cream + terracotta. Semua ikon SVG.

<p align="center">
  <img src="assets/previews/rn-ecommerce.png" width="240" alt="RN e-commerce">
</p>

Lihat di [`react-native/e-commerce-product/`](./react-native/e-commerce-product).

#### 3. Music player

Music player ala vinyl record. Piringan hitam dengan border emas, progress bar emas, tombol play/pause SVG. Palet dark premium `#0F0F0F` + gold `#D4AF37`.

<p align="center">
  <img src="assets/previews/rn-music.png" width="240" alt="RN music">
</p>

Lihat di [`react-native/music-player/`](./react-native/music-player).

#### 4. Food delivery home

Home screen food delivery dengan location header, search bar SVG, kategori scrollable, banner promo, dan list restoran. Palet cream + terracotta.

<p align="center">
  <img src="assets/previews/rn-food.png" width="240" alt="RN food delivery">
</p>

Lihat di [`react-native/food-delivery/`](./react-native/food-delivery).

#### 5. Fitness tracker

Fitness dashboard dark green `#0A1410` dengan ring progress langkah (SVG), 4 stat card dengan ikon SVG berwarna, dan bar chart mingguan.

<p align="center">
  <img src="assets/previews/rn-fitness.png" width="240" alt="RN fitness">
</p>

Lihat di [`react-native/fitness-tracker/`](./react-native/fitness-tracker).

</details>

## Kit SwiftUI

### 1. Profile screen — iOS classic

Profile screen ala profile bawaan iOS. Putih bersih, navbar tipis 44pt, avatar centered, accent iOS blue `#007AFF`.

<p align="center">
  <img src="assets/previews/swiftui-profile-screen.png" width="240" alt="SwiftUI profile">
</p>

Lihat di [`swiftui/profile-screen-ios/`](./swiftui/profile-screen-ios).

<details>
<summary><b>Lihat 4 kit SwiftUI lainnya</b></summary>
<br>

#### 2. Notes — journal

Editor jurnal dengan palet kertas cream `#F5EFE0`. Tipografi serif untuk body, sans untuk chrome. Bottom FAB dengan ikon pencil SVG.

<p align="center">
  <img src="assets/previews/swiftui-notes.png" width="240" alt="SwiftUI notes">
</p>

Lihat di [`swiftui/notes-journal/`](./swiftui/notes-journal).

#### 3. Calendar — minimal

Calendar monthly view dengan accent red `#D64545`. Days grid dengan dot indicator untuk hari ada event, today highlighted, agenda di bawah.

<p align="center">
  <img src="assets/previews/swiftui-calendar.png" width="240" alt="SwiftUI calendar">
</p>

Lihat di [`swiftui/calendar-minimal/`](./swiftui/calendar-minimal).

#### 4. Wallet — cards

Wallet app dark green forest `#0F1F1A`. Animated balance counter, kartu bank dengan chip emas, dan list transaksi dengan ikon SVG berwarna. Accent green `#4ADE80`.

<p align="center">
  <img src="assets/previews/swiftui-wallet.png" width="240" alt="SwiftUI wallet">
</p>

Lihat di [`swiftui/wallet-cards/`](./swiftui/wallet-cards).

#### 5. News reader

News reader ala koran editorial. Brand "The Daily." dengan titik merah, horizontal tab strip dengan ikon search & menu SVG, hero article, dan list items.

<p align="center">
  <img src="assets/previews/swiftui-news.png" width="240" alt="SwiftUI news">
</p>

Lihat di [`swiftui/news-reader/`](./swiftui/news-reader).

</details>

## Kit Jetpack Compose

### 1. Chat UI — monochrome

Chat screen monochrome. Bubble terkirim charcoal `#1A1A1A`, diterima `#F4F4F6`. Border 1px `#ECECEC`. Tanpa warna Material 3.

<p align="center">
  <img src="assets/previews/compose-chat-monochrome.png" width="240" alt="Compose chat monochrome">
</p>

Lihat di [`jetpack-compose/chat-ui-monochrome/`](./jetpack-compose/chat-ui-monochrome).

<details>
<summary><b>Lihat 4 kit Jetpack Compose lainnya</b></summary>
<br>

#### 2. Email inbox

Email inbox dengan palet cream paper `#F5F0E6`. Folder chips horizontal, list email dengan avatar berwarna, subject bold untuk unread, FAB "Tulis" dengan ikon pencil SVG.

<p align="center">
  <img src="assets/previews/compose-email.png" width="240" alt="Compose email">
</p>

Lihat di [`jetpack-compose/email-inbox/`](./jetpack-compose/email-inbox).

#### 3. Todo — sticky notes

Todo list ala sticky notes. Tiap card diberi rotasi kecil dan warna kuning/amber selang-seling, dengan pin merah. Checkbox toggle dengan strike-through.

<p align="center">
  <img src="assets/previews/compose-todo.png" width="240" alt="Compose todo">
</p>

Lihat di [`jetpack-compose/todo-sticky/`](./jetpack-compose/todo-sticky).

#### 4. Calculator — terminal

Calculator ala terminal green-on-black. Display 64sp dengan glow, tombol operator terminal green `#00FF88`, tombol equals solid green.

<p align="center">
  <img src="assets/previews/compose-calculator.png" width="240" alt="Compose calculator">
</p>

Lihat di [`jetpack-compose/calculator-terminal/`](./jetpack-compose/calculator-terminal).

#### 5. Maps — paper

Maps screen ala paper map `#E8DFC8`. Jalan putih dengan border tan, park sage, water soft blue. Pin terracotta dengan pulse, bottom card info tempat dengan ikon SVG (star, clock, navigation).

<p align="center">
  <img src="assets/previews/compose-maps.png" width="240" alt="Compose maps">
</p>

Lihat di [`jetpack-compose/maps-paper/`](./jetpack-compose/maps-paper).

</details>

## Cara pakai

Clone repo, masuk folder kit yang kamu mau, ikuti README di sana.

```bash
git clone https://github.com/shawawah12-alt/ui-folio.git
cd ui-folio/flutter/login-screen-minimalist
flutter pub get
flutter run
```

Atau unduh folder tertentu saja lewat [DownGit](https://downgit.github.io/) kalau gak mau clone semuanya.

Setiap kit berisi file kode asli per framework (`.dart` + `pubspec.yaml`, `.tsx` + `package.json`, `.swift`, `.kt`), bukan cuma mockup. Tinggal jalankan di editor / simulator masing-masing.

## Struktur folder

```
ui-folio/
├── flutter/
│   ├── login-screen-minimalist/    .dart + pubspec.yaml
│   ├── onboarding-carousel/
│   ├── dashboard-finance/
│   ├── weather-forecast/
│   └── settings-paper/
├── react-native/
│   ├── login-screen-warm/          .tsx + package.json
│   ├── e-commerce-product/
│   ├── music-player/
│   ├── food-delivery/
│   └── fitness-tracker/
├── swiftui/
│   ├── profile-screen-ios/         .swift
│   ├── notes-journal/
│   ├── calendar-minimal/
│   ├── wallet-cards/
│   └── news-reader/
├── jetpack-compose/
│   ├── chat-ui-monochrome/         .kt
│   ├── email-inbox/
│   ├── todo-sticky/
│   ├── calculator-terminal/
│   └── maps-paper/
├── assets/
│   └── previews/                   20 PNG screenshots (760×1520 @ 2x retina)
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
└── LICENSE
```

## Berkontribusi

Fork, bikin branch, tambah kit atau perbaiki yang ada, buka PR. Aturan lengkap di [`CONTRIBUTING.md`](./CONTRIBUTING.md).

Beberapa hal yang perlu diingat:

- Tulis kode sendiri, jangan salin dari repo berlisensi restriktif
- Pixel-perfect, responsive, accessible — bukan cuma cantik di screenshot
- Dark mode wajib (atau eksplisit light only dengan alasan)
- Sertakan screenshot PNG di README kit kamu (resolusi 760×1520 @ 2x retina)
- Hindari gradient warna mencolok (biru-merah, ungu-pink) — pilih palet yang tenang
- Pilih palet yang spesifik: cream paper, warm dark, forest green, terminal, monochrome, sand, dll. Bukan "default Material" atau "iOS blue gradient"
- **Pakai SVG inline untuk ikon**, jangan emoji. Emoji render beda di tiap OS dan kelihatan gak konsisten

## Roadmap

- [x] 4 starter kit (satu per framework)
- [x] 20 kit total (5 per framework)
- [ ] 50 kit total
- [ ] Kotlin Multiplatform
- [ ] .NET MAUI
- [ ] Website showcase

## Lisensi

MIT. Bebas dipakai untuk apa saja, personal maupun komersial. Sertakan atribusi lisensi saja.

Lihat [`LICENSE`](./LICENSE) untuk teks lengkapnya.

---

# 🇬🇧 English Version

A curated shelf of mobile UI kits, cross-framework. Instead of starting from a blank page every project, grab one from here, customize it, and ship.

Each kit ships with complete source code (`*.dart`, `*.tsx`, `*.swift`, `*.kt` — not just mockups), a sharp PNG screenshot (760×1520 @ 2x retina), and customization notes. No AI templates — just hand-written code with palettes chosen one by one.

## Table of contents

- [Flutter kits](#flutter-kits)
- [React Native kits](#react-native-kits)
- [SwiftUI kits](#swiftui-kits-1)
- [Jetpack Compose kits](#jetpack-compose-kits-1)
- [How to use](#how-to-use)
- [Folder layout](#folder-layout)
- [Contributing](#contributing)
- [Roadmap](#roadmap-1)
- [License](#license)

## Flutter kits

### 1. Login screen — minimalist

Swiss-style login. White, black, one accent, no gradient, no shadow. Inputs use a 1px bottom border.

<p align="center">
  <img src="assets/previews/flutter-login-minimalist.png" width="240" alt="Flutter login minimalist">
</p>

See [`flutter/login-screen-minimalist/`](./flutter/login-screen-minimalist).

<details>
<summary><b>See 4 more Flutter kits</b></summary>
<br>

#### 2. Onboarding carousel

3 slides with circular illustrations (sage/sand/sky) and animated dots indicator. "Skip" button top-right, becomes "Start" on the last slide.

<p align="center">
  <img src="assets/previews/flutter-onboarding.png" width="240" alt="Flutter onboarding">
</p>

See [`flutter/onboarding-carousel/`](./flutter/onboarding-carousel).

#### 3. Dashboard — finance

Finance dashboard with animated balance counter, two stat cards, and a weekly bar chart. Slate dark palette `#0F172A`.

<p align="center">
  <img src="assets/previews/flutter-dashboard.png" width="240" alt="Flutter dashboard">
</p>

See [`flutter/dashboard-finance/`](./flutter/dashboard-finance).

#### 4. Weather forecast

Weather app with a soft sky gradient (light blue → cream), 5-hour hourly forecast, and a weekly forecast with a temperature range bar. All weather icons are SVG, not emoji.

<p align="center">
  <img src="assets/previews/flutter-weather.png" width="240" alt="Flutter weather">
</p>

See [`flutter/weather-forecast/`](./flutter/weather-forecast).

#### 5. Settings — paper

Paper-style settings screen. Cream palette `#FAF7F0` with sand accent and golden toggle `#D4A437`. Group cards with thin dividers.

<p align="center">
  <img src="assets/previews/flutter-settings.png" width="240" alt="Flutter settings">
</p>

See [`flutter/settings-paper/`](./flutter/settings-paper).

</details>

## React Native kits

### 1. Login screen — warm dark

Login with a warm dark palette. Warm near-black background `#1A1714`, terracotta accent `#C66B3D`.

<p align="center">
  <img src="assets/previews/rn-login-warm.png" width="240" alt="RN login warm">
</p>

See [`react-native/login-screen-warm/`](./react-native/login-screen-warm).

<details>
<summary><b>See 4 more React Native kits</b></summary>
<br>

#### 2. E-commerce product detail

Product detail with 3-slide gallery, rating stars, quantity selector, and a bottom bar (favorite + add to cart). Sand/cream + terracotta palette. All icons are SVG.

<p align="center">
  <img src="assets/previews/rn-ecommerce.png" width="240" alt="RN e-commerce">
</p>

See [`react-native/e-commerce-product/`](./react-native/e-commerce-product).

#### 3. Music player

Vinyl-record-style music player. Black disc with gold border, gold progress bar, SVG play/pause button. Dark premium palette `#0F0F0F` + gold `#D4AF37`.

<p align="center">
  <img src="assets/previews/rn-music.png" width="240" alt="RN music">
</p>

See [`react-native/music-player/`](./react-native/music-player).

#### 4. Food delivery home

Food delivery home screen with location header, SVG search bar, scrollable categories, promo banner, and restaurant list. Cream + terracotta palette.

<p align="center">
  <img src="assets/previews/rn-food.png" width="240" alt="RN food delivery">
</p>

See [`react-native/food-delivery/`](./react-native/food-delivery).

#### 5. Fitness tracker

Fitness dashboard, dark green `#0A1410`, with SVG step-progress ring, 4 stat cards with colored SVG icons, and a weekly bar chart.

<p align="center">
  <img src="assets/previews/rn-fitness.png" width="240" alt="RN fitness">
</p>

See [`react-native/fitness-tracker/`](./react-native/fitness-tracker).

</details>

## SwiftUI kits

### 1. Profile screen — iOS classic

Profile screen in the style of native iOS profile. Clean white, thin 44pt navbar, centered avatar, iOS blue accent `#007AFF`.

<p align="center">
  <img src="assets/previews/swiftui-profile-screen.png" width="240" alt="SwiftUI profile">
</p>

See [`swiftui/profile-screen-ios/`](./swiftui/profile-screen-ios).

<details>
<summary><b>See 4 more SwiftUI kits</b></summary>
<br>

#### 2. Notes — journal

Journal editor with a paper-cream palette `#F5EFE0`. Serif typography for body, sans for chrome. Bottom FAB with a SVG pencil icon.

<p align="center">
  <img src="assets/previews/swiftui-notes.png" width="240" alt="SwiftUI notes">
</p>

See [`swiftui/notes-journal/`](./swiftui/notes-journal).

#### 3. Calendar — minimal

Monthly calendar view with red accent `#D64545`. Days grid with dot indicator for days that have events, today highlighted, agenda below.

<p align="center">
  <img src="assets/previews/swiftui-calendar.png" width="240" alt="SwiftUI calendar">
</p>

See [`swiftui/calendar-minimal/`](./swiftui/calendar-minimal).

#### 4. Wallet — cards

Wallet app in dark forest green `#0F1F1A`. Animated balance counter, bank card with gold chip, and a transaction list with colored SVG icons. Green accent `#4ADE80`.

<p align="center">
  <img src="assets/previews/swiftui-wallet.png" width="240" alt="SwiftUI wallet">
</p>

See [`swiftui/wallet-cards/`](./swiftui/wallet-cards).

#### 5. News reader

Editorial-style news reader. "The Daily." brand with a red dot, horizontal tab strip with SVG search & menu icons, hero article, and list items.

<p align="center">
  <img src="assets/previews/swiftui-news.png" width="240" alt="SwiftUI news">
</p>

See [`swiftui/news-reader/`](./swiftui/news-reader).

</details>

## Jetpack Compose kits

### 1. Chat UI — monochrome

Monochrome chat screen. Sent bubble charcoal `#1A1A1A`, received `#F4F4F6`. 1px border `#ECECEC`. No Material 3 colors.

<p align="center">
  <img src="assets/previews/compose-chat-monochrome.png" width="240" alt="Compose chat monochrome">
</p>

See [`jetpack-compose/chat-ui-monochrome/`](./jetpack-compose/chat-ui-monochrome).

<details>
<summary><b>See 4 more Jetpack Compose kits</b></summary>
<br>

#### 2. Email inbox

Email inbox with a cream-paper palette `#F5F0E6`. Horizontal folder chips, email list with colored avatars, bold subject for unread, "Compose" FAB with a SVG pencil icon.

<p align="center">
  <img src="assets/previews/compose-email.png" width="240" alt="Compose email">
</p>

See [`jetpack-compose/email-inbox/`](./jetpack-compose/email-inbox).

#### 3. Todo — sticky notes

Sticky-notes-style todo list. Each card is slightly rotated and alternates yellow/amber, with a red pin. Checkbox toggle with strike-through.

<p align="center">
  <img src="assets/previews/compose-todo.png" width="240" alt="Compose todo">
</p>

See [`jetpack-compose/todo-sticky/`](./jetpack-compose/todo-sticky).

#### 4. Calculator — terminal

Terminal-style calculator, green-on-black. 64sp display with glow, terminal-green operator buttons `#00FF88`, solid-green equals button.

<p align="center">
  <img src="assets/previews/compose-calculator.png" width="240" alt="Compose calculator">
</p>

See [`jetpack-compose/calculator-terminal/`](./jetpack-compose/calculator-terminal).

#### 5. Maps — paper

Paper-map-style maps screen `#E8DFC8`. White roads with tan borders, sage parks, soft-blue water. Terracotta pin with pulse, bottom card with SVG icons (star, clock, navigation).

<p align="center">
  <img src="assets/previews/compose-maps.png" width="240" alt="Compose maps">
</p>

See [`jetpack-compose/maps-paper/`](./jetpack-compose/maps-paper).

</details>

## How to use

Clone the repo, enter the kit folder you want, and follow the README there.

```bash
git clone https://github.com/shawawah12-alt/ui-folio.git
cd ui-folio/flutter/login-screen-minimalist
flutter pub get
flutter run
```

Or download only a specific folder via [DownGit](https://downgit.github.io/) if you don't want to clone everything.

Each kit contains real source files per framework (`.dart` + `pubspec.yaml`, `.tsx` + `package.json`, `.swift`, `.kt`) — not just mockups. Just run them in your editor / simulator of choice.

## Folder layout

```
ui-folio/
├── flutter/
│   ├── login-screen-minimalist/    .dart + pubspec.yaml
│   ├── onboarding-carousel/
│   ├── dashboard-finance/
│   ├── weather-forecast/
│   └── settings-paper/
├── react-native/
│   ├── login-screen-warm/          .tsx + package.json
│   ├── e-commerce-product/
│   ├── music-player/
│   ├── food-delivery/
│   └── fitness-tracker/
├── swiftui/
│   ├── profile-screen-ios/         .swift
│   ├── notes-journal/
│   ├── calendar-minimal/
│   ├── wallet-cards/
│   └── news-reader/
├── jetpack-compose/
│   ├── chat-ui-monochrome/         .kt
│   ├── email-inbox/
│   ├── todo-sticky/
│   ├── calculator-terminal/
│   └── maps-paper/
├── assets/
│   └── previews/                   20 PNG screenshots (760×1520 @ 2x retina)
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
└── LICENSE
```

## Contributing

Fork, create a branch, add a kit or improve an existing one, open a PR. Full rules in [`CONTRIBUTING.md`](./CONTRIBUTING.md).

A few things to keep in mind:

- Write your own code, don't copy from repos with restrictive licenses
- Pixel-perfect, responsive, accessible — not just pretty in a screenshot
- Dark mode is mandatory (or explicitly light-only with a reason)
- Include a PNG screenshot in your kit's README (resolution 760×1520 @ 2x retina)
- Avoid loud color gradients (blue-red, purple-pink) — pick calm palettes
- Pick a specific palette: cream paper, warm dark, forest green, terminal, monochrome, sand, etc. Not "default Material" or "iOS blue gradient"
- **Use inline SVG for icons**, not emoji. Emoji render differently across OSes and look inconsistent

## Roadmap

- [x] 4 starter kits (one per framework)
- [x] 20 kits total (5 per framework)
- [ ] 50 kits total
- [ ] Kotlin Multiplatform
- [ ] .NET MAUI
- [ ] Showcase website

## License

MIT. Free to use for anything, personal or commercial. Just keep the license attribution.

See [`LICENSE`](./LICENSE) for the full text.

---

<div align="center">

Built by hand. Open an issue if something breaks, or a discussion if you have an idea.

</div>
