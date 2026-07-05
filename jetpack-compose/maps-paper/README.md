# Maps — paper (Jetpack Compose)

Maps screen ala paper map. Background paper `#E8DFC8`, jalan putih dengan border tan, area park hijau sage, air biru soft, dan building tan. Bottom card dengan info tempat + tombol rute terracotta.

## Preview

![preview](../../assets/previews/compose-maps.gif)

## Detail

- Background paper `#E8DFC8`
- Jalan putih `#FBF7F0` dengan border `#D4C8A8`
- Park sage green `#C7D1B5`
- Water soft blue `#B5C7D1`
- Pin terracotta `#C66B3D` dengan pulse animation
- Bottom card dengan info tempat + tombol rute

## Cara pakai

```bash
cd jetpack-compose/maps-paper
# Buka di Android Studio, atau:
./gradlew assembleDebug
./gradlew installDebug
```

## Customisasi

- Posisi jalan: ubah offset dan size di tiap `Road`
- Lokasi park/air/building: edit Box offset dan size
- Info card: ganti nama, alamat, meta di bottom card

## Tech stack

- Jetpack Compose 1.6+
- Kotlin 1.9+
- Min SDK 24, Target SDK 34

## License

MIT
