# Login screen — warm dark (React Native)

Login dengan palet coklat hangat dark mode. Background warm near-black `#1A1714`, accent terracotta `#C66B3D`. Tanpa gradient, tanpa blur, tanpa shadow. Card polos dengan border tipis.

## Preview

![preview](../../assets/previews/rn-login-warm.png)

## Detail

- Background warm dark `#1A1714`
- Card `#252019` dengan border `#34302A`
- Accent terracotta `#C66B3D`
- SSO buttons (Google, Apple) outline tipis
- Dark only (memang sengaja)

## Cara pakai

```bash
cd react-native/login-screen-warm
npm install
npx expo start
```

## Customisasi

- Palet: objek `COLORS` di atas `App.tsx`
- Logo: ganti `View` dengan `Text` 'R' jadi asset kamu
- SSO: tinggal sambungin handler di `onPress` tiap `TouchableOpacity`

## Tech stack

- React Native 0.74+
- Expo SDK 51+
- TypeScript

## License

MIT

---

# 🇬🇧 English

Login with a warm dark palette. Warm near-black background `#1A1714`, terracotta accent `#C66B3D`. No gradients, no blur, no shadows. Plain card with a thin border.

## Preview

![preview](../../assets/previews/rn-login-warm.png)

## Detail

- Warm dark background `#1A1714`
- Card `#252019` with `#34302A` border
- Terracotta accent `#C66B3D`
- SSO buttons (Google, Apple) thin outline
- Dark only (by design)

## How to use

```bash
cd react-native/login-screen-warm
npm install
npx expo start
```

## Customization

- Palette: `COLORS` object at the top of `App.tsx`
- Logo: replace the `View` with `Text` 'R' with your asset
- SSO: wire up handlers in each `TouchableOpacity` `onPress`

## Tech stack

- React Native 0.74+
- Expo SDK 51+
- TypeScript

## License

MIT
