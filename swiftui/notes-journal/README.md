# Notes — journal (SwiftUI)

Editor jurnal dengan palet kertas cream. Tipografi serif (Georgia/SF Pro) untuk body, sans untuk chrome. Bottom FAB untuk edit.

## Preview

![preview](../../assets/previews/swiftui-notes.gif)

## Detail

- Background paper `#F5EFE0`
- Accent tan `#8B6F47`
- Body serif dengan line-spacing lebar
- FAB lingkaran tan dengan ikon pencil
- Top bar dengan back / title / done

## Cara pakai

```bash
cd swiftui/notes-journal
open NotesJournal.xcodeproj
# Cmd+R di simulator
```

## Customisasi

- Teks body: ganti string di `Text(...)` berturut-turut
- Warna paper: ubah `Color(red: 0.96, green: 0.94, blue: 0.88)`
- FAB action: ganti closure `action: {}`

## Tech stack

- SwiftUI 5
- iOS 17+
- Xcode 15+

## License

MIT
