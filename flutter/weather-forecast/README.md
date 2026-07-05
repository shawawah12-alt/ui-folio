# Weather forecast (Flutter)

Weather app dengan gradient sky lembut (light blue → cream, bukan gradient mencolok). Hourly forecast 5 jam dan weekly forecast dengan bar range suhu.

## Preview

![preview](../../assets/previews/flutter-weather.gif)

## Detail

- Gradient sky `#87CEEB → #B0D9E8 → #E8F0F4` (monochrome blue, bukan biru-merah)
- Card semi-transparan dengan backdrop blur
- Hourly forecast 5 jam
- Weekly forecast dengan bar range suhu
- Tipografi Inter

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
