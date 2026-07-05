# Settings — paper (Flutter)

Settings screen ala paper. Palet cream `#FAF7F0` dengan accent sand `#8B7355` dan toggle golden `#D4A437`. Group cards dengan divider tipis.

## Preview

![preview](../../assets/previews/flutter-settings.gif)

## Detail

- Background cream `#FAF7F0`
- Card putih dengan border `#EDE7D9`
- Toggle animated (sliding knob)
- Group label uppercase dengan letter-spacing
- Tipografi Inter

## Cara pakai

```bash
cd flutter/settings-paper
flutter pub get
flutter run
```

## Customisasi

- Toggle state: variabel `bool _darkMode`, dll. di `_SettingsScreenState`
- Item tambahan: tambah `_Row` atau `_ToggleRow` di dalam `_Group`
- Warna toggle: ubah `Color(0xFFD4A437)` di `_ToggleRow`

## Tech stack

- Flutter 3.x
- Dart 3.x
- `google_fonts` (Inter)

## License

MIT
