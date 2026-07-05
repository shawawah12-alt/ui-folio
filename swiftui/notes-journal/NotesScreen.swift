import SwiftUI

struct NotesScreen: View {
    var body: some View {
        VStack(spacing: 0) {
            // Top bar
            HStack {
                Text("‹ Catatan")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.55, green: 0.43, blue: 0.28))
                Spacer()
                Text("Jurnal")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(red: 0.18, green: 0.14, blue: 0.10))
                Spacer()
                Text("Selesai")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(red: 0.55, green: 0.43, blue: 0.28))
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 16)

            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("5 JULI 2026 · PAGI")
                        .font(.system(size: 11))
                        .foregroundColor(Color(red: 0.55, green: 0.43, blue: 0.28))
                        .kerning(0.4)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 24)

                    Text("Pagi yang lambat")
                        .font(.system(size: 26, weight: .bold))
                        .foregroundColor(Color(red: 0.18, green: 0.14, blue: 0.10))
                        .padding(.horizontal, 20)
                        .padding(.bottom, 12)

                    VStack(alignment: .leading, spacing: 14) {
                        Text("Hujan turun sejak subuh. Dinding kamar masih remang, dan aku sengaja tidak menyalakan lampu. Kopi sudah dingin di meja, tapi tidak apa.")
                        Text("Ada sesuatu yang tenang dari pagi seperti ini. Tidak ada buru-buru, tidak ada notifikasi yang minta perhatian. Cuma suara air dan jendela yang berkabut.")
                        Text("Aku pikir, mungkin inilah yang kurang dari hari-hari akhir-akhir ini: ruang untuk diam.")
                    }
                    .font(.system(size: 15))
                    .foregroundColor(Color(red: 0.29, green: 0.25, blue: 0.18))
                    .lineSpacing(7)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 100)
                }
            }

            // FAB
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("✎")
                        .font(.system(size: 22, weight: .light))
                        .foregroundColor(Color(red: 0.96, green: 0.94, blue: 0.88))
                        .frame(width: 48, height: 48)
                        .background(Color(red: 0.55, green: 0.43, blue: 0.28))
                        .clipShape(Circle())
                }
                .padding(.trailing, 20)
                .padding(.bottom, 24)
            }
        }
        .background(Color(red: 0.96, green: 0.94, blue: 0.88))
        .padding(.top, 48)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    NotesScreen()
}
