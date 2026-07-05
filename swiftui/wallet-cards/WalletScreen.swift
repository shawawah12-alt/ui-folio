import SwiftUI

struct WalletScreen: View {
    @State private var displayBalance: Double = 0
    private let targetBalance: Double = 8_421_500

    var body: some View {
        VStack(spacing: 0) {
            // Header
            HStack {
                Text("Dompet")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color(red: 0.91, green: 0.94, blue: 0.93))
                    .kerning(-0.3)
                Spacer()
                Button(action: {}) {
                    Text("+")
                        .font(.system(size: 18, weight: .light))
                        .foregroundColor(Color(red: 0.29, green: 0.87, blue: 0.50))
                        .frame(width: 32, height: 32)
                        .background(Color(red: 0.10, green: 0.20, blue: 0.16))
                        .clipShape(Circle())
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 48)
            .padding(.bottom, 24)

            ScrollView {
                VStack(spacing: 24) {
                    // Balance card
                    VStack(alignment: .leading, spacing: 6) {
                        Text("TOTAL SALDO")
                            .font(.system(size: 11))
                            .foregroundColor(Color(red: 0.42, green: 0.50, blue: 0.46))
                            .kerning(0.5)
                        HStack(alignment: .firstTextBaseline, spacing: 4) {
                            Text("Rp")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(Color(red: 0.42, green: 0.50, blue: 0.46))
                            Text(formatRupiah(displayBalance))
                                .font(.system(size: 32, weight: .bold))
                                .foregroundColor(Color(red: 0.91, green: 0.94, blue: 0.93))
                                .kerning(-0.5)
                        }
                        Text("↑ Rp 1.2jt bulan ini")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 0.29, green: 0.87, blue: 0.50))
                    }
                    .padding(20)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(red: 0.10, green: 0.20, blue: 0.16))
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color(red: 0.12, green: 0.24, blue: 0.18), lineWidth: 1)
                            )
                    )

                    // Cards section
                    HStack {
                        Text("Kartu")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color(red: 0.91, green: 0.94, blue: 0.93))
                        Spacer()
                        Text("Lihat semua ›")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 0.29, green: 0.87, blue: 0.50))
                    }

                    // Card
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Bank Mandiri")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color(red: 0.91, green: 0.94, blue: 0.93))
                                Text("DEBIT · VISA")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color(red: 0.42, green: 0.50, blue: 0.46))
                                    .kerning(0.4)
                            }
                            Spacer()
                            Text("⌒")
                                .font(.system(size: 22))
                                .foregroundColor(.white).opacity(0.6)
                        }
                        RoundedRectangle(cornerRadius: 4)
                            .fill(
                                LinearGradient(
                                    colors: [Color(red: 0.83, green: 0.69, blue: 0.22), Color(red: 0.72, green: 0.58, blue: 0.12)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(width: 30, height: 22)
                        Text("•••• 4291")
                            .font(.system(.body, design: .monospaced))
                            .foregroundColor(Color(red: 0.91, green: 0.94, blue: 0.93))
                            .kerning(2)
                        HStack {
                            Text("Berlaku ")
                                .font(.system(size: 11))
                                .foregroundColor(Color(red: 0.42, green: 0.50, blue: 0.46))
                            Text("08/27")
                                .font(.system(size: 11))
                                .foregroundColor(Color(red: 0.91, green: 0.94, blue: 0.93))
                            Spacer()
                            Text("Shawawah A")
                                .font(.system(size: 11))
                                .foregroundColor(Color(red: 0.91, green: 0.94, blue: 0.93))
                        }
                    }
                    .padding(16)
                    .background(
                        RoundedRectangle(cornerRadius: 14)
                            .fill(Color(red: 0.10, green: 0.20, blue: 0.16))
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color(red: 0.12, green: 0.24, blue: 0.18), lineWidth: 1)
                            )
                    )

                    // Transactions
                    HStack {
                        Text("Transaksi terbaru")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color(red: 0.91, green: 0.94, blue: 0.93))
                        Spacer()
                    }

                    VStack(spacing: 0) {
                        TxRow(icon: "↓", iconColor: Color(red: 0.29, green: 0.87, blue: 0.50),
                              name: "Transfer masuk", time: "Hari ini · 09.42", amount: "+Rp 2.500.000", amountColor: Color(red: 0.29, green: 0.87, blue: 0.50))
                        Divider().background(Color(red: 0.10, green: 0.16, blue: 0.13))
                        TxRow(icon: "↑", iconColor: Color(red: 0.96, green: 0.45, blue: 0.71),
                              name: "Toko Kopi Senja", time: "Kemarin · 18.15", amount: "−Rp 38.000", amountColor: Color(red: 0.91, green: 0.94, blue: 0.93))
                        Divider().background(Color(red: 0.10, green: 0.16, blue: 0.13))
                        TxRow(icon: "↑", iconColor: Color(red: 0.96, green: 0.45, blue: 0.71),
                              name: "Bayar listrik", time: "2 Jul · 10.00", amount: "−Rp 412.000", amountColor: Color(red: 0.91, green: 0.94, blue: 0.93))
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .background(Color(red: 0.06, green: 0.12, blue: 0.10))
        .onAppear {
            withAnimation(.easeOut(duration: 1.5)) {
                displayBalance = targetBalance
            }
        }
    }

    private func formatRupiah(_ v: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = "."
        let s = formatter.string(from: NSNumber(value: Int(v))) ?? "0"
        return s
    }
}

struct TxRow: View {
    let icon: String
    let iconColor: Color
    let name: String
    let time: String
    let amount: String
    let amountColor: Color

    var body: some View {
        HStack(spacing: 12) {
            Text(icon)
                .font(.system(size: 14))
                .foregroundColor(iconColor)
                .frame(width: 32, height: 32)
                .background(Color(red: 0.10, green: 0.20, blue: 0.16))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 2) {
                Text(name)
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(Color(red: 0.91, green: 0.94, blue: 0.93))
                Text(time)
                    .font(.system(size: 11))
                    .foregroundColor(Color(red: 0.42, green: 0.50, blue: 0.46))
            }
            Spacer()
            Text(amount)
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(amountColor)
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    WalletScreen()
}
