# Music player (React Native)

Music player ala vinyl record. Piringan hitam berputar dengan border emas, progress bar emas, dan tombol play/pause SVG. Palet dark premium `#0F0F0F` + gold `#D4AF37`.

## Preview

![preview](../../assets/previews/rn-music.png)

## Detail

- Background near-black `#0F0F0F`
- Vinyl disk 280px dengan border emas `#D4AF37`
- Progress bar emas yang naik tiap detik
- Play/pause toggle SVG
- Tipografi Inter

## Cara pakai

```bash
cd react-native/music-player
npm install
npx expo start
```

## Customisasi

- Track info: ubah `track` dan `artist` di state
- Durasi total: ubah `TOTAL_SECONDS`
- Auto-play: set `isPlaying` initial `true` atau `false`

## Tech stack

- React Native 0.74+
- Expo SDK 51+
- TypeScript
- `react-native-reanimated` (optional, for disk spin animation)

## License

MIT

---

# 🇬🇧 English

Vinyl-record-style music player. Black disc spinning with a gold border, gold progress bar, and SVG play/pause button. Dark premium palette `#0F0F0F` + gold `#D4AF37`.

## Preview

![preview](../../assets/previews/rn-music.png)

## Detail

- Near-black background `#0F0F0F`
- 280px vinyl disk with gold border `#D4AF37`
- Gold progress bar advancing every second
- SVG play/pause toggle
- Inter typography

## How to use

```bash
cd react-native/music-player
npm install
npx expo start
```

## Customization

- Track info: change `track` and `artist` in state
- Total duration: change `TOTAL_SECONDS`
- Auto-play: set `isPlaying` initial to `true` or `false`

## Tech stack

- React Native 0.74+
- Expo SDK 51+
- TypeScript
- `react-native-reanimated` (optional, for disk spin animation)

## License

MIT
