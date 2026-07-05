# Profile screen — iOS classic (SwiftUI)

Profile screen ala profile bawaan iOS. Putih bersih, navbar tipis 44pt, avatar centered, stats row dengan vertical divider, dan grid postingan 3 kolom. Tanpa cover image, tanpa gradient.

## Preview

![preview](../../assets/previews/swiftui-profile-screen.png)

## Detail

- Background putih
- Accent iOS blue `#007AFF`
- Tipografi SF Pro
- Navbar 44pt dengan bottom border 0.5px
- Stats row dengan vertical divider 1px
- Grid 3 kolom dengan gap 1px

## Cara pakai

```bash
cd swiftui/profile-screen-ios
open ProfileScreenIOS.xcodeproj
# Cmd+R di simulator
```

## Customisasi

- Avatar: ganti `Circle` + `Image(systemName: "person.fill")` dengan `AsyncImage` (URL) atau asset lokal
- Stats: ubah `statItem(num:label:)` jadi data dinamis
- Grid: ganti placeholder `Rectangle` jadi `AsyncImage` dari URL postingan

## Tech stack

- SwiftUI 5
- iOS 17+ deployment target
- Xcode 15+

## License

MIT
