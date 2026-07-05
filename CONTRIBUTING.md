# Contributing Guide

Terima kasih sudah tertarik berkontribusi pada **ui-folio**. Dokumen ini menjelaskan alur kerja dan aturan yang harus diikuti supaya kontribusi kamu diterima dengan lancar.
Thank you for your interest in contributing to **ui-folio**. This document explains the workflow and rules to follow so your contribution gets merged smoothly.

---

# 🇮🇩 Versi Bahasa Indonesia

## Bahasa

Kontribusi bisa dalam **Bahasa Indonesia** atau **English**. Komentar kode usahakan English supaya bisa dibaca developer global. README tiap kit **wajib bilingual** (Indonesia di atas, English di bawah) supaya konsisten dengan README utama.

## Cara kontribusi

### 1. Fork & Clone

```bash
git clone https://github.com/<username-mu>/ui-folio.git
cd ui-folio
git remote add upstream https://github.com/shawawah12-alt/ui-folio.git
```

### 2. Buat branch baru

```bash
git checkout -b feat/nama-kit-kamu
```

### 3. Tambahkan kit kamu

Struktur folder wajib:

```
<framework>/
└── nama-kit-kamu/
    ├── README.md          # Bilingual: Indonesia + English
    ├── source/            # Kode sumber
    └── preview.png        # Screenshot 760×1520 @ 2x retina (atau letakkan di assets/previews/)
```

Contoh untuk Flutter:

```
flutter/
└── login-screen-minimalist/
    ├── README.md
    ├── lib/
    │   └── main.dart
    └── pubspec.yaml
```

Untuk framework lain:
- React Native: file `App.tsx` + `package.json`
- SwiftUI: file `.swift`
- Jetpack Compose: file `.kt` + `build.gradle` (opsional)

### 4. Commit dengan Conventional Commits

```bash
git commit -m "feat(flutter): add neumorphism login screen"
```

Scope yang valid: `flutter`, `react-native`, `swiftui`, `jetpack-compose`, `docs`, `chore`.

### 5. Push & buka Pull Request

```bash
git push origin feat/nama-kit-kamu
```

Lalu buka PR ke branch `main` repo utama. Jelaskan di deskripsi PR:
- Apa kit yang ditambahkan/diubah
- Framework & palet yang dipakai
- Screenshot preview (bisa link ke file di repo)

## Aturan kit

- ✅ **Original** — jangan upload kit yang udah ada di repo lain tanpa izin
- ✅ **Pixel-perfect** — hindari layout yang berantakan di layar kecil (iPhone SE) maupun besar (iPad Pro)
- ✅ **Accessible** — kontras warna cukup (minimal WCAG AA), ukuran font minimal 14sp
- ✅ **Responsive** — harus jalan di layar 360px sampai 800px lebar
- ✅ **Dark mode ready** — wajib support dark mode, atau eksplisit light-only dengan alasan
- ✅ **SVG inline untuk ikon** — jangan pakai emoji (🔍 ⚙ ⋮). Emoji render beda di tiap OS dan kelihatan gak konsisten
- ✅ **Screenshot PNG** — resolusi 760×1520 @ 2x retina, simpan di `assets/previews/`
- ❌ **Dilarang** hardcode API key, token, atau data pribadi
- ❌ **Dilarang** pakai asset berbayar tanpa lisensi
- ❌ **Dilarang** gradient warna mencolok (biru-merah, ungu-pink). Pilih palet tenang: cream paper, warm dark, forest green, terminal, monochrome, sand, dll

## Naming convention

Format nama folder:

```
<tipe-ui>-<gaya>-<framework-spesifik>
```

Contoh:
- `login-screen-minimalist`
- `dashboard-finance`
- `weather-forecast`
- `chat-ui-monochrome`
- `maps-paper`

Gunakan kebab-case (huruf kecil, dipisah `-`). Hindari underscore.

## Format README kit

Setiap kit **wajib** punya `README.md` bilingual dengan format:

```markdown
# Nama kit (Framework)

Deskripsi singkat dalam Bahasa Indonesia.

## Preview

![preview](../../assets/previews/nama-kit.png)

## Detail

- Bullet point fitur-fitur utama
- Palet warna dengan hex code
- Tipografi yang dipakai

## Cara pakai

```bash
cd <framework>/nama-kit
# Command untuk run
```

## Customisasi

- File mana yang diubah untuk apa
- Variabel/state yang perlu di-tweak

## Tech stack

- Framework version
- Bahasa
- Dependencies

## License

MIT
```

Lalu tambahkan versi English di bawah dengan format yang sama, dipisahkan `---`.

## Proses review

- Maintainer akan review dalam **3–7 hari**
- Kalau ada perubahan, kami kasih comment di PR
- Setelah merge, kamu masuk ke **Contributors Hall of Fame** di README utama

## Butuh bantuan?

Buka [issue baru](https://github.com/shawawah12-alt/ui-folio/issues/new) dengan label `question` kalau bingung. Kami tidak gigit kok.

---

# 🇬🇧 English Version

## Language

Contributions can be in **Indonesian** or **English**. Code comments should preferably be in English so global developers can read them. Each kit's README **must be bilingual** (Indonesian on top, English on bottom) to stay consistent with the main README.

## How to contribute

### 1. Fork & Clone

```bash
git clone https://github.com/<your-username>/ui-folio.git
cd ui-folio
git remote add upstream https://github.com/shawawah12-alt/ui-folio.git
```

### 2. Create a new branch

```bash
git checkout -b feat/your-kit-name
```

### 3. Add your kit

Required folder structure:

```
<framework>/
└── your-kit-name/
    ├── README.md          # Bilingual: Indonesian + English
    ├── source/            # Source code
    └── preview.png        # 760×1520 @ 2x retina screenshot (or place it in assets/previews/)
```

Example for Flutter:

```
flutter/
└── login-screen-minimalist/
    ├── README.md
    ├── lib/
    │   └── main.dart
    └── pubspec.yaml
```

For other frameworks:
- React Native: `App.tsx` file + `package.json`
- SwiftUI: `.swift` file
- Jetpack Compose: `.kt` file + `build.gradle` (optional)

### 4. Commit with Conventional Commits

```bash
git commit -m "feat(flutter): add neumorphism login screen"
```

Valid scopes: `flutter`, `react-native`, `swiftui`, `jetpack-compose`, `docs`, `chore`.

### 5. Push & open a Pull Request

```bash
git push origin feat/your-kit-name
```

Then open a PR to the `main` branch of the upstream repo. In the PR description, explain:
- Which kit you're adding/changing
- Framework & palette used
- Screenshot preview (can be a link to a file in the repo)

## Kit rules

- ✅ **Original** — don't upload a kit that already exists in another repo without permission
- ✅ **Pixel-perfect** — avoid broken layouts on small (iPhone SE) and large (iPad Pro) screens
- ✅ **Accessible** — sufficient color contrast (WCAG AA minimum), font size at least 14sp
- ✅ **Responsive** — must work on screens 360px to 800px wide
- ✅ **Dark mode ready** — dark mode support is mandatory, or explicitly light-only with a reason
- ✅ **Inline SVG for icons** — don't use emoji (🔍 ⚙ ⋮). Emoji renders differently across OSes and looks inconsistent
- ✅ **PNG screenshot** — 760×1520 @ 2x retina resolution, stored in `assets/previews/`
- ❌ **No** hardcoded API keys, tokens, or personal data
- ❌ **No** paid assets without a license
- ❌ **No** loud color gradients (blue-red, purple-pink). Pick calm palettes: cream paper, warm dark, forest green, terminal, monochrome, sand, etc.

## Naming convention

Folder name format:

```
<ui-type>-<style>-<framework-specific>
```

Examples:
- `login-screen-minimalist`
- `dashboard-finance`
- `weather-forecast`
- `chat-ui-monochrome`
- `maps-paper`

Use kebab-case (lowercase, separated by `-`). Avoid underscores.

## Kit README format

Each kit **must** have a bilingual `README.md` with this format:

```markdown
# Kit name (Framework)

Short description in Indonesian.

## Preview

![preview](../../assets/previews/kit-name.png)

## Detail

- Bullet points of main features
- Color palette with hex codes
- Typography used

## How to use

```bash
cd <framework>/kit-name
# Command to run
```

## Customization

- Which file to change for what
- Variables/state to tweak

## Tech stack

- Framework version
- Language
- Dependencies

## License

MIT
```

Then add the English version below with the same format, separated by `---`.

## Review process

- Maintainer will review within **3–7 days**
- If changes are needed, we'll comment on the PR
- After merge, you'll be added to the **Contributors Hall of Fame** in the main README

## Need help?

Open a [new issue](https://github.com/shawawah12-alt/ui-folio/issues/new) with the `question` label if you're stuck. We don't bite.
