import SwiftUI

struct NewsScreen: View {
    @State private var activeTab: Int = 0
    private let tabs = ["Headline", "Teknologi", "Bisnis", "Olahraga", "Budaya"]

    var body: some View {
        VStack(spacing: 0) {
            // Top
            HStack {
                Text("The Daily")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.10))
                    .kerning(-0.5)
                + Text(".")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color(red: 0.78, green: 0.06, blue: 0.18))
                Spacer()
                HStack(spacing: 14) {
                    Text("🔍")
                    Text("☰")
                }
                .font(.system(size: 18))
                .foregroundColor(Color(white: 0.33))
            }
            .padding(.horizontal, 20)
            .padding(.top, 48)
            .padding(.bottom, 16)
            .overlay(
                Rectangle()
                    .fill(Color(white: 0.9))
                    .frame(height: 1),
                alignment: .bottom
            )

            // Tabs
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 18) {
                    ForEach(tabs.indices, id: \.self) { i in
                        Text(tabs[i])
                            .font(.system(size: 13))
                            .foregroundColor(i == activeTab ? Color(red: 0.10, green: 0.10, blue: 0.10) : Color(white: 0.53))
                            .fontWeight(i == activeTab ? .semibold : .regular)
                            .background(
                                Rectangle()
                                    .fill(Color(red: 0.78, green: 0.06, blue: 0.18))
                                    .frame(height: 2)
                                    .offset(y: 12),
                                alignment: .bottom
                            )
                            .onTapGesture { activeTab = i }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 12)
            }
            .overlay(
                Rectangle()
                    .fill(Color(white: 0.9))
                    .frame(height: 1),
                alignment: .bottom
            )

            ScrollView {
                VStack(spacing: 0) {
                    // Hero
                    VStack(alignment: .leading, spacing: 14) {
                        ZStack {
                            LinearGradient(
                                colors: [Color(red: 0.78, green: 0.82, blue: 0.85), Color(red: 0.66, green: 0.71, blue: 0.76)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                            Text("photo")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        .frame(height: 180)

                        Text("HEADLINE")
                            .font(.system(size: 10, weight: .bold))
                            .foregroundColor(Color(red: 0.78, green: 0.06, blue: 0.18))
                            .kerning(0.6)

                        Text("Perpustakaan kota buka lagi setelah dua tahun renovasi")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.10))
                            .kerning(-0.3)
                            .lineSpacing(2)

                        Text("Pembaca kembali ke ruang yang kini lebih terang, lebih tenang, dan punya lebih banyak kursi dekat jendela.")
                            .font(.system(size: 13))
                            .foregroundColor(Color(white: 0.33))
                            .lineSpacing(3)

                        Text("Oleh Sari Wulandari · 5 menit baca")
                            .font(.system(size: 11))
                            .foregroundColor(Color(white: 0.53))
                    }
                    .padding(20)

                    Rectangle()
                        .fill(Color(white: 0.9))
                        .frame(height: 8)

                    // List items
                    NewsListItem(
                        cat: "Teknologi",
                        title: "Apa itu 'slow software', dan kenapa orang mulai memperhatikannya",
                        meta: "3 jam lalu · 4 menit"
                    )
                    NewsListItem(
                        cat: "Bisnis",
                        title: "Kopi spesialti tumbuh dua kali lipat di kota-kota kecil",
                        meta: "5 jam lalu · 6 menit"
                    )
                }
            }
        }
        .background(Color(white: 0.98))
    }
}

struct NewsListItem: View {
    let cat: String
    let title: String
    let meta: String

    var body: some View {
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 4) {
                Text(cat.uppercased())
                    .font(.system(size: 10, weight: .bold))
                    .foregroundColor(Color(red: 0.78, green: 0.06, blue: 0.18))
                    .kerning(0.6)
                Text(title)
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.10))
                    .lineSpacing(2)
                Text(meta)
                    .font(.system(size: 11))
                    .foregroundColor(Color(white: 0.53))
            }
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [Color(red: 0.78, green: 0.82, blue: 0.85), Color(red: 0.66, green: 0.71, blue: 0.76)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 80, height: 80)
                .cornerRadius(4)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .overlay(
            Rectangle()
                .fill(Color(white: 0.93))
                .frame(height: 1),
            alignment: .bottom
        )
    }
}

#Preview {
    NewsScreen()
}
