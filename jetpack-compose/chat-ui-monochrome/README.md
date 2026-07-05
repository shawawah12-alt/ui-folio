# Chat UI — monochrome (Jetpack Compose)

Chat screen monochrome. Pesan terkirim pakai bubble charcoal `#1A1A1A`, pesan diterima pakai light gray `#F4F4F6`. Background putih, border tipis 1px di topbar dan input bar. Tanpa warna Material 3, tanpa gradient.

## Preview

![preview](../../assets/previews/compose-chat-monochrome.png)

## Detail

- Background putih `#FFFFFF`
- Bubble terkirim `#1A1A1A` dengan teks putih
- Bubble diterima `#F4F4F6` dengan teks gelap
- Border 1px `#ECECEC`
- Topbar dengan avatar + nama + status
- Input bar dengan attach + send icon
- Typing indicator animasi

## Cara pakai

```bash
cd jetpack-compose/chat-ui-monochrome
# Buka di Android Studio, atau:
./gradlew assembleDebug
./gradlew installDebug
```

## Customisasi

- Palet: konstanta `Bg`, `Surface`, `Border`, `BubbleThem`, `BubbleMe` di atas file
- Avatar: ganti `Box` dengan `Image` dari Coil
- Typing indicator: ganti `Text("•••")` dengan animasi `InfiniteTransition`

## Tech stack

- Jetpack Compose 1.6+
- Kotlin 1.9+
- Min SDK 24, Target SDK 34

## License

MIT
