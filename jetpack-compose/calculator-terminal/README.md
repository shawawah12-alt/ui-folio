# Calculator — terminal (Jetpack Compose)

Calculator ala terminal green-on-black. Display 64sp dengan glow effect, history line di atas, grid 4 kolom tombol. Tombol operator berbeda warna (terminal green `#00FF88`).

## Preview

![preview](../../assets/previews/compose-calculator.png)

## Detail

- Background black `#0A0A0A`
- Tombol dark `#141414` dengan border `#1F1F1F`
- Tombol function `#0F0F0F` dengan teks muted
- Tombol operator `#1A1A1A` dengan teks green
- Tombol equals `#00FF88` dengan teks black
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

---

# 🇬🇧 English

Terminal-style calculator, green-on-black. 64sp display with glow, history line on top, 4-column button grid. Operator buttons stand out in terminal green `#00FF88`.

## Preview

![preview](../../assets/previews/compose-calculator.png)

## Detail

- Black background `#0A0A0A`
- Dark buttons `#141414` with `#1F1F1F` border
- Function buttons `#0F0F0F` with muted text
- Operator buttons `#1A1A1A` with green text
- Equals button `#00FF88` with black text
- 0 button spans 2 columns

## How to use

```bash
cd jetpack-compose/calculator-terminal
# Buka di Android Studio, atau:
./gradlew assembleDebug
./gradlew installDebug
```

## Customization

- Display state: `display` and `history` variables in `CalculatorScreen`
- Buttons: edit the row list inside the Column grid
- Accent color: change `Accent` and `EqBg`

## Tech stack

- Jetpack Compose 1.6+
- Kotlin 1.9+
- Min SDK 24, Target SDK 34

## License

MIT
