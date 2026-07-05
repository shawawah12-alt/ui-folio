import SwiftUI

struct ProfileScreen: View {
    let posts: [Int] = Array(0..<9)

    var body: some View {
        VStack(spacing: 0) {
            // Navbar
            HStack {
                Button(action: {}) {
                    Text("‹ Back")
                        .font(.system(size: 15))
                        .foregroundColor(Color(red: 0, green: 0.48, blue: 1))
                }
                Spacer()
                Text("Profile")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                Button(action: {}) {
                    Image(systemName: "ellipsis")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0, green: 0.48, blue: 1))
                }
            }
            .padding(.horizontal, 16)
            .frame(height: 44)
            .overlay(Rectangle().fill(Color(white: 0.9)).frame(height: 0.5), alignment: .bottom)

            // Content
            VStack(spacing: 0) {
                Circle()
                    .fill(Color(white: 0.95))
                    .frame(width: 92, height: 92)
                    .overlay(
                        Image(systemName: "person.fill")
                            .font(.system(size: 36))
                            .foregroundColor(Color(white: 0.78))
                    )
                    .padding(.top, 28)
                    .padding(.bottom, 14)

                Text("Shawawah Alt")
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.12))

                Text("@shawawah12-alt")
                    .font(.system(size: 14))
                    .foregroundColor(Color(white: 0.56))
                    .padding(.top, 2)

                Text("Mobile UI enthusiast · Building cool things")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.12))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                    .padding(.bottom, 24)

                // Stats
                HStack(spacing: 24) {
                    statItem(num: "1,234", label: "posts")
                    vDivider
                    statItem(num: "15.8K", label: "followers")
                    vDivider
                    statItem(num: "234", label: "following")
                }
                .padding(.bottom, 24)

                // Actions
                HStack(spacing: 8) {
                    Button(action: {}) {
                        Text("Follow")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(Color(red: 0, green: 0.48, blue: 1))
                            .cornerRadius(10)
                    }
                    Button(action: {}) {
                        Text("Message")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color(red: 0, green: 0.48, blue: 1))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(Color(white: 0.95))
                            .cornerRadius(10)
                    }
                    Button(action: {}) {
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 15))
                            .foregroundColor(Color(red: 0, green: 0.48, blue: 1))
                            .padding(.vertical, 10)
                            .padding(.horizontal, 14)
                            .background(Color(white: 0.95))
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 8)
                .padding(.bottom, 28)
            }

            // Grid
            LazyVGrid(
                columns: Array(repeating: GridItem(.flexible(), spacing: 1), count: 3),
                spacing: 1
            ) {
                ForEach(posts, id: \.self) { _ in
                    Rectangle()
                        .fill(Color(white: 0.97))
                        .aspectRatio(1, contentMode: .fit)
                }
            }
            .background(Color(white: 0.9))
        }
        .background(Color.white)
        .ignoresSafeArea(edges: .bottom)
    }

    private var vDivider: some View {
        Rectangle()
            .fill(Color(white: 0.9))
            .frame(width: 1, height: 24)
    }

    private func statItem(num: String, label: String) -> some View {
        VStack(spacing: 2) {
            Text(num)
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.12))
            Text(label)
                .font(.system(size: 11))
                .foregroundColor(Color(white: 0.56))
        }
    }
}

#Preview {
    ProfileScreen()
}
