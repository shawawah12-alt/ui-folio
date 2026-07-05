# Login screen — minimalist (Flutter)

Login bersih ala Swiss. Putih, hitam, satu accent, tanpa gradient, tanpa shadow. Input pakai border bawah 1px, bukan kotak. Cocok untuk aplikasi yang ingin terlihat tenang dan terorganisir.

## Preview

![preview](../../assets/previews/flutter-login-minimalist.png)

## Detail

- Background putih, accent `#111111`
- Tipografi Inter
- Input border bawah 1px, bukan kotak
- Tombol solid hitam, elevation 0
- Dark mode ikut sistem

## Cara pakai

```bash
cd flutter/login-screen-minimalist
flutter pub get
flutter run
```

## Customisasi

- Warna utama: `lib/main.dart` → `ColorScheme.fromSeed`
- Logo: ganti `Container` di bagian atas
- Validasi: `validator` di tiap `TextFormField`

## Tech stack

- Flutter 3.x
- Dart 3.x
- `google_fonts` (Inter)

## License

MIT

---

# 🇬🇧 English

Swiss-style login. White, black, one accent, no gradient, no shadow. Inputs use a 1px bottom border instead of a box. Suits apps that want a calm, organized look.

## Preview

![preview](../../assets/previews/flutter-login-minimalist.png)

## Detail

- White background, accent `#111111`
- Inter typography
- 1px bottom-border inputs instead of boxes
- Solid black button, elevation 0
- Dark mode follows system

## How to use

```bash
cd flutter/login-screen-minimalist
flutter pub get
flutter run
```

## Customization

- Primary color: `lib/main.dart` → `ColorScheme.fromSeed`
- Logo: replace the `Container` at the top
- Validation: `validator` on each `TextFormField`

## Tech stack

- Flutter 3.x
- Dart 3.x
- `google_fonts` (Inter)

## License

MIT
