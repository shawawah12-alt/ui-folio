# Dashboard — finance (Flutter)

Dashboard keuangan personal. Animated balance counter, dua stat card (pemasukan/pengeluaran), dan bar chart mingguan. Palet slate dark + soft gray — bukan gradient.

## Preview

![preview](../../assets/previews/flutter-dashboard.gif)

## Detail

- Background light gray `#F4F5F7`
- Saldo card hitam slate `#0F172A`
- Bar chart animated grow on load
- Balance counter animasi naik dari 0 ke target
- Tipografi Inter

## Cara pakai

```bash
cd flutter/dashboard-finance
flutter pub get
flutter run
```

## Customisasi

- Data saldo: ubah `_targetBalance` di `lib/main.dart`
- Stat cards: tambah/edit di Row stats grid
- Bar chart: ubah list `_Bar(heightFactor, alt)` — height 0.0–1.0

## Tech stack

- Flutter 3.x
- Dart 3.x
- `google_fonts` (Inter)

## License

MIT
