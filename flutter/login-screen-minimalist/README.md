# Login screen — minimalist (Flutter)

Login bersih ala Swiss. Putih, hitam, satu accent, tanpa gradient, tanpa shadow. Input pakai border bawah, bukan kotak. Cocok untuk aplikasi yang ingin terlihat tenang dan terorganisir.

## Preview

![preview](../../assets/previews/flutter-login-minimalist.png)

## Detail

- Background putih, accent `#111111`
- Tipografi Inter
- Input dengan border bawah 1px
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
