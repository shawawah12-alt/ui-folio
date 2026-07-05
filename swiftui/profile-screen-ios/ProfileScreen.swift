import SwiftUI

struct ProfileScreen: View {
    let posts: [String] = Array(repeating: "photo", count: 12)

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Cover image
                ZStack(alignment: .bottom) {
                    LinearGradient(
                        colors: [Color.purple, Color.pink],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .frame(height: 180)

                    // Avatar
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 100, height: 100)
                        .overlay(
                            Image(systemName: "person.fill")
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                        )
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 4)
                        )
                        .offset(y: 50)
                }

                VStack(spacing: 16) {
                    Spacer().frame(height: 60)

                    VStack(spacing: 4) {
                        Text("Shawawah Alt")
                            .font(.title2.bold())
                        Text("@shawawah12-alt")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Text("Mobile UI enthusiast • Building cool things")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }

                    // Stats
                    HStack {
                        statItem(count: "1.2K", label: "Posts")
                        Divider().frame(height: 30)
                        statItem(count: "15.8K", label: "Followers")
                        Divider().frame(height: 30)
                        statItem(count: "234", label: "Following")
                    }
                    .padding(.horizontal, 24)

                    // Action buttons
                    HStack(spacing: 12) {
                        Button(action: {}) {
                            Text("Follow")
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 10)
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        Button(action: {}) {
                            Text("Message")
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 10)
                                .background(Color.gray.opacity(0.2))
                                .foregroundColor(.primary)
                                .cornerRadius(10)
                        }
                        Button(action: {}) {
                            Image(systemName: "square.and.arrow.up")
                                .padding(.vertical, 10)
                                .padding(.horizontal, 14)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal, 24)

                    // Grid of posts
                    LazyVGrid(
                        columns: Array(repeating: GridItem(.flexible(), spacing: 2), count: 3),
                        spacing: 2
                    ) {
                        ForEach(posts.indices, id: \.self) { _ in
                            Rectangle()
                                .fill(Color.gray.opacity(0.2))
                                .aspectRatio(1, contentMode: .fit)
                                .overlay(
                                    Image(systemName: "photo")
                                        .foregroundColor(.gray)
                                )
                        }
                    }
                    .padding(.top, 8)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }

    private func statItem(count: String, label: String) -> some View {
        VStack(spacing: 2) {
            Text(count).font(.headline)
            Text(label).font(.caption).foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ProfileScreen()
}
