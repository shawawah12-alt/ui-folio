# Calculator — terminal (Jetpack Compose)

Calculator ala terminal green-on-black. Display besar 64sp dengan glow effect via color, history line di atas, dan grid 4 kolom tombol. Tombol operator berbeda warna (terminal green `#00FF88`).

## Preview

![preview](../../assets/previews/compose-calculator.gif)

## Detail

- Background black `#0A0A0A`
- Tombol dark `#141414` dengan border `#1F1F1F`
- Tombol function `#0F0F0F` dengan teks muted
- Tombol operator `#1A1A1A` dengan teks green
- Tombol equals `#00FF88` dengan teks black
- Display monospace feel
- Tombol 0 span 2 kolom

## Cara pakai

```bash
cd jetpack-compose/calculator-terminal
# Buka di Android Studio, atau:
./gradlew assembleDebug
./gradlew installDebug
```

## Customisasi

- Display state: variabel `display` dan `history` di `CalculatorScreen`
- Tombol: edit list row di dalam Column grid
- Warna accent: ubah `Accent` dan `EqBg`

## Tech stack

- Jetpack Compose 1.6+
- Kotlin 1.9+
- Min SDK 24, Target SDK 34

## License

MIT
