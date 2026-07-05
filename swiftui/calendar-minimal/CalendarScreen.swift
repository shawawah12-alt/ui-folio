import SwiftUI

struct CalendarScreen: View {
    var body: some View {
        VStack(spacing: 0) {
            // Header
            HStack {
                Text("Juli 2026")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.12))
                    .kerning(-0.4)
                Spacer()
                HStack(spacing: 14) {
                    Text("‹")
                    Text("›")
                }
                .font(.system(size: 16))
                .foregroundColor(Color(red: 0.84, green: 0.27, blue: 0.27))
            }
            .padding(.horizontal, 20)
            .padding(.top, 48)
            .padding(.bottom, 20)

            // Weekdays
            HStack(spacing: 0) {
                ForEach(["Se", "Se", "Ra", "Ka", "Ju", "Sa", "Mi"], id: \.self) { d in
                    Text(d)
                        .font(.system(size: 10))
                        .foregroundColor(Color(white: 0.56))
                        .frame(maxWidth: .infinity)
                        .kerning(0.4)
                }
            }
            .padding(.horizontal, 12)
            .padding(.bottom, 8)

            // Days grid
            LazyVGrid(
                columns: Array(repeating: GridItem(.flexible(), spacing: 2), count: 7),
                spacing: 2
            ) {
                ForEach(0..<35, id: \.self) { i in
                    DayCell(
                        day: dayForIndex(i),
                        isToday: dayForIndex(i) == 5,
                        hasEvent: [5, 9, 13, 17, 21].contains(dayForIndex(i)),
                        isSelected: dayForIndex(i) == 13
                    )
                    .frame(height: 50)
                }
            }
            .padding(.horizontal, 12)

            // Agenda
            VStack(alignment: .leading, spacing: 0) {
                Text("HARI INI · 5 JULI")
                    .font(.system(size: 11))
                    .foregroundColor(Color(white: 0.56))
                    .kerning(0.5)
                    .padding(.bottom, 12)

                EventRow(time: "09.00", color: Color(red: 0.84, green: 0.27, blue: 0.27), name: "Standup pagi", loc: "Zoom · 30 menit")
                EventRow(time: "13.30", color: Color(red: 0, green: 0.48, blue: 1), name: "Review desain UI", loc: "Figma · 1 jam")
                EventRow(time: "18.00", color: Color(red: 0.20, green: 0.78, blue: 0.35), name: "Jalan sore", loc: "Taman kota")
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            .padding(.bottom, 32)
        }
        .background(Color.white)
    }

    private func dayForIndex(_ i: Int) -> Int {
        let offsets: [Int] = [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]
        return offsets[i]
    }
}

struct DayCell: View {
    let day: Int
    let isToday: Bool
    let hasEvent: Bool
    let isSelected: Bool

    var body: some View {
        ZStack {
            if isToday {
                Circle()
                    .fill(Color(red: 0.84, green: 0.27, blue: 0.27))
            } else if isSelected {
                Circle()
                    .fill(Color(red: 1, green: 0.90, blue: 0.90))
            }
            VStack(spacing: 4) {
                Text(day <= 0 ? "" : "\(day)")
                    .font(.system(size: 15, weight: isToday || isSelected ? .semibold : .regular))
                    .foregroundColor(
                        isToday ? .white :
                        day <= 0 ? Color(white: 0.78) :
                        isSelected ? Color(red: 0.84, green: 0.27, blue: 0.27) :
                        Color(red: 0.11, green: 0.11, blue: 0.12)
                    )
                if hasEvent && day > 0 {
                    Circle()
                        .fill(isToday ? Color.white : Color(red: 0.84, green: 0.27, blue: 0.27))
                        .frame(width: 4, height: 4)
                }
            }
        }
    }
}

struct EventRow: View {
    let time: String
    let color: Color
    let name: String
    let loc: String

    var body: some View {
        HStack(spacing: 12) {
            Text(time)
                .font(.system(size: 11))
                .foregroundColor(Color(white: 0.56))
                .frame(width: 50, alignment: .leading)
            RoundedRectangle(cornerRadius: 2)
                .fill(color)
                .frame(width: 3)
            VStack(alignment: .leading, spacing: 2) {
                Text(name)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.12))
                Text(loc)
                    .font(.system(size: 12))
                    .foregroundColor(Color(white: 0.56))
            }
            Spacer()
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    CalendarScreen()
}
