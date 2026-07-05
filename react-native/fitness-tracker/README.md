# Fitness tracker (React Native)

Fitness dashboard dark green `#0A1410` dengan ring progress langkah (SVG), 4 stat card (denyut, kalori, aktif, tidur), dan bar chart mingguan. Animated counter + ring saat load.

## Preview

![preview](../../assets/previews/rn-fitness.png)

## Detail

- Background dark green `#0A1410`
- Card `#142219` dengan border `#1F3327`
- Ring SVG dengan stroke dasharray animated
- 4 stat card dengan SVG icon berwarna (green, cyan, yellow, pink)
- Bar chart 7 hari, today highlighted

## Cara pakai

```bash
cd react-native/fitness-tracker
npm install
npx expo start
```

## Customisasi

- Target langkah: ubah `TARGET_STEPS`
- Current langkah: ubah `CURRENT_STEPS`
- Stats: edit array `STATS`
- Bars: edit array `BARS`

## Tech stack

- React Native 0.74+
- Expo SDK 51+
- TypeScript
- `react-native-svg` (for the ring)

## License

MIT

---

# 🇬🇧 English

Fitness dashboard in dark green `#0A1410` with an SVG step-progress ring, 4 stat cards (heart, calories, active, sleep), and a weekly bar chart. Animated counter + ring on load.

## Preview

![preview](../../assets/previews/rn-fitness.png)

## Detail

- Dark green background `#0A1410`
- Card `#142219` with `#1F3327` border
- SVG ring with animated stroke dasharray
- 4 stat cards with colored SVG icons (green, cyan, yellow, pink)
- 7-day bar chart, today highlighted

## How to use

```bash
cd react-native/fitness-tracker
npm install
npx expo start
```

## Customization

- Step target: change `TARGET_STEPS`
- Current steps: change `CURRENT_STEPS`
- Stats: edit the `STATS` array
- Bars: edit the `BARS` array

## Tech stack

- React Native 0.74+
- Expo SDK 51+
- TypeScript
- `react-native-svg` (for the ring)

## License

MIT
