# Music player (React Native)

Music player ala vinyl record. Piringan hitam berputar dengan border emas, progress bar emas, dan tombol play/pause. Palet dark premium `#0F0F0F` + gold `#D4AF37`.

## Preview

![preview](../../assets/previews/rn-music.gif)

## Detail

- Background near-black `#0F0F0F`
- Vinyl disk 280px dengan border emas `#D4AF37`
- Progress bar emas yang naik tiap detik
- Play/pause toggle
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
- `react-native-reanimated` (untuk animasi disk berputar, opsional)

## License

MIT
