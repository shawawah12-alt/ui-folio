# Weather forecast (Flutter)

Weather app dengan gradient sky lembut (light blue → cream, bukan gradient mencolok). Hourly forecast 5 jam dan weekly forecast dengan bar range suhu. Semua ikon cuaca pakai SVG.

## Preview

![preview](../../assets/previews/flutter-weather.png)

## Detail

- Gradient sky `#87CEEB → #B0D9E8 → #E8F0F4` (monochrome blue)
- Card semi-transparan dengan backdrop blur
- Hourly forecast 5 jam
- Weekly forecast dengan bar range suhu
- Ikon cuaca SVG (sun, cloud, rain)

## Cara pakai

```bash
cd flutter/weather-forecast
flutter pub get
flutter run
```

## Customisasi

- Suhu saat ini: ubah teks `'27°'` di header
- Hourly: edit list `_Hourly` di body
- Weekly: edit list `_ForecastRow`

## Tech stack

- Flutter 3.x
- Dart 3.x
- `google_fonts` (Inter)

## License

MIT

---

# 🇬🇧 English

Weather app with a soft sky gradient (light blue → cream, not loud). 5-hour hourly forecast and a weekly forecast with a temperature range bar. All weather icons are SVG.

## Preview

![preview](../../assets/previews/flutter-weather.png)

## Detail

- Sky gradient `#87CEEB → #B0D9E8 → #E8F0F4` (monochrome blue)
- Semi-transparent cards with backdrop blur
- 5-hour hourly forecast
- Weekly forecast with temperature range bar
- SVG weather icons (sun, cloud, rain)

## How to use

```bash
cd flutter/weather-forecast
flutter pub get
flutter run
```

## Customization

- Current temperature: change the `'27°'` text in the header
- Hourly: edit the `_Hourly` list in the body
- Weekly: edit the `_ForecastRow` list

## Tech stack

- Flutter 3.x
- Dart 3.x
- `google_fonts` (Inter)

## License

MIT
