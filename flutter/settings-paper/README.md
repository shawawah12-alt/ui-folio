# Settings — paper (Flutter)

Settings screen ala paper. Palet cream `#FAF7F0` dengan accent sand `#8B7355` dan toggle golden `#D4A437`. Group cards dengan divider tipis.

## Preview

![preview](../../assets/previews/flutter-settings.png)

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

---

# 🇬🇧 English

Paper-style settings screen. Cream palette `#FAF7F0` with sand accent `#8B7355` and a golden toggle `#D4A437`. Group cards with thin dividers.

## Preview

![preview](../../assets/previews/flutter-settings.png)

## Detail

- Cream background `#FAF7F0`
- White cards with `#EDE7D9` border
- Animated toggle (sliding knob)
- Uppercase group labels with letter-spacing
- Inter typography

## How to use

```bash
cd flutter/settings-paper
flutter pub get
flutter run
```

## Customization

- Toggle state: `bool _darkMode` etc. variables in `_SettingsScreenState`
- More items: add `_Row` or `_ToggleRow` inside `_Group`
- Toggle color: change `Color(0xFFD4A437)` in `_ToggleRow`

## Tech stack

- Flutter 3.x
- Dart 3.x
- `google_fonts` (Inter)

## License

MIT
