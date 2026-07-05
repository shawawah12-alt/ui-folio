# Calendar — minimal (SwiftUI)

Calendar monthly view dengan accent red `#D64545`. Header month + nav arrows, weekdays strip, days grid dengan dot indicator untuk hari ada event, today highlighted, dan agenda di bawah.

## Preview

![preview](../../assets/previews/swiftui-calendar.gif)

## Detail

- Background putih
- Accent red `#D64545` untuk today, event dot, dan nav arrows
- Selected day pakai tinted background
- Agenda dengan vertical color bar per event
- Tipografi SF Pro

## Cara pakai

```bash
cd swiftui/calendar-minimal
open CalendarMinimal.xcodeproj
# Cmd+R di simulator
```

## Customisasi

- Bulan/tahun: ubah string "Juli 2026"
- Hari today: ubah kondisi `dayForIndex(i) == 5` di DayCell
- Events: edit list di `EventRow` di bawah

## Tech stack

- SwiftUI 5
- iOS 17+
- Xcode 15+

## License

MIT
