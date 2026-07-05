# E-commerce product detail (React Native)

Product detail page dengan gallery auto-rotating 3 slide, rating stars, quantity selector, dan bottom bar (favorite + add to cart). Palet sand/cream dengan accent terracotta.

## Preview

![preview](../../assets/previews/rn-ecommerce.gif)

## Detail

- Background cream `#FBF7F0`
- Gallery dengan 3 slide auto-rotate + dots indicator
- Quantity selector dengan tombol +/−
- Bottom bar fixed dengan tombol favorite outline + add to cart solid
- Tipografi Inter

## Cara pakai

```bash
cd react-native/e-commerce-product
npm install
npx expo start
```

## Customisasi

- Product data: ubah `SLIDES`, `name`, `price`, `desc` di `App.tsx`
- Quantity state: variabel `qty`
- Auto-rotate: ubah interval `2000` ms di `useEffect`

## Tech stack

- React Native 0.74+
- Expo SDK 51+
- TypeScript

## License

MIT
