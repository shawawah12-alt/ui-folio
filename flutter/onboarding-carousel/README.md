# Onboarding carousel (Flutter)

Onboarding 3 slide dengan ilustrasi sirkular dan dots indicator. Palet tenang: sage green, sand, sky blue — bukan gradient mencolok.

## Preview

![preview](../../assets/previews/flutter-onboarding.png)

## Detail

- Background cream `#F5F1E8`
- Tiga slide dengan illo sirkular warna berbeda (sage, sand, sky)
- Dots indicator animated (active dot memanjang)
- Tombol 'Lewati' di kanan atas
- Tombol berubah jadi 'Mulai' di slide terakhir

## Cara pakai

```bash
cd flutter/onboarding-carousel
flutter pub get
flutter run
```

## Customisasi

- Slides: list `_slides` di `lib/main.dart` — tambah/edit sesuai kebutuhan
- Warna illo: ubah `illoBg` dan `illoFg` per slide
- Teks: `title` dan `body` per slide

## Tech stack

- Flutter 3.x
- Dart 3.x
- `google_fonts` (Inter)

## License

MIT

---

# 🇬🇧 English

3-slide onboarding with circular illustrations and a dots indicator. Calm palette: sage green, sand, sky blue — no loud gradients.

## Preview

![preview](../../assets/previews/flutter-onboarding.png)

## Detail

- Cream background `#F5F1E8`
- Three slides with different circular illos (sage, sand, sky)
- Animated dots indicator (active dot stretches)
- 'Skip' button top-right
- Button becomes 'Start' on the last slide

## How to use

```bash
cd flutter/onboarding-carousel
flutter pub get
flutter run
```

## Customization

- Slides: edit `_slides` list in `lib/main.dart`
- Illo colors: change `illoBg` and `illoFg` per slide
- Text: `title` and `body` per slide

## Tech stack

- Flutter 3.x
- Dart 3.x
- `google_fonts` (Inter)

## License

MIT
