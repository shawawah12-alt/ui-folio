# Login screen — warm dark (React Native)

Login dengan palet coklat hangat dark mode. Background `#1A1714` (warm near-black), accent terracotta `#C66B3D`. Tanpa gradient, tanpa blur, tanpa shadow. Plain dark card dengan border tipis.

## Preview

![preview](../../assets/previews/rn-login-warm.png)

## Detail

- Background warm dark `#1A1714`
- Card `#252019` dengan border `#34302A`
- Accent terracotta `#C66B3D` dipakai untuk logo, link, dan tombol
- Tipografi Inter
- SSO buttons (Google, Apple) minimalis outline
- Dark only (sesuai sengaja)

## Cara pakai

```bash
cd react-native/login-screen-warm
npm install
npx expo start
```

## Customisasi

- Palet: objek `COLORS` di atas `App.tsx`
- Logo: ganti `View` dengan `Text` "R" jadi asset kamu
- SSO: tinggal sambungin handler di `onPress` tiap `TouchableOpacity`

## Tech stack

- React Native 0.74+
- Expo SDK 51+
- TypeScript

## License

MIT
