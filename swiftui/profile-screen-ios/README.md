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

---

# 🇬🇧 English

Profile screen in the style of native iOS profile. Clean white, thin 44pt navbar, centered avatar, stats row with vertical dividers, and a 3-column post grid. No cover image, no gradients.

## Preview

![preview](../../assets/previews/swiftui-profile-screen.png)

## Detail

- White background
- iOS blue accent `#007AFF`
- SF Pro typography
- 44pt navbar with 0.5px bottom border
- Stats row with 1px vertical dividers
- 3-column grid with 1px gap

## How to use

```bash
cd swiftui/profile-screen-ios
open ProfileScreenIOS.xcodeproj
# Cmd+R di simulator
```

## Customization

- Avatar: replace `Circle` + `Image(systemName: "person.fill")` with `AsyncImage` (URL) or a local asset
- Stats: change `statItem(num:label:)` to dynamic data
- Grid: replace the `Rectangle` placeholder with `AsyncImage` from post URLs

## Tech stack

- SwiftUI 5
- iOS 17+ deployment target
- Xcode 15+

## License

MIT
