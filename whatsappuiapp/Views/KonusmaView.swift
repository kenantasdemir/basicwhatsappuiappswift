
import SwiftUI

struct KonusmaView: View {
    var user: User
    @State private var newMessageText: String = ""
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack(spacing: 8) {
                        VStack {
                            AsyncImage(url: URL(string: user.image)) { image in
                                image.resizable()
                                    .scaledToFill()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())

                            Text(user.name)
                        }
                    }
                    .padding()
                }

                HStack {
                    TextField("Mesaj...", text: $newMessageText)
                        .frame(height: 40)

                    Button(action: {
                        newMessageText = ""
                    }) {
                        Image(systemName: "paperplane.fill")
                            .rotationEffect(.degrees(45))
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                .background(Color(UIColor.systemGray6))
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        HStack(spacing: 4) {
                            Image(systemName: "chevron.left")
                            Text("Geri")
                        }
                    }
                }

                ToolbarItem(placement: .principal) {
                    HStack(spacing: 8) {
                        AsyncImage(url: URL(string: user.image)) { image in
                            image.resizable()
                                .scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())

                        Text(user.name)
                            .font(.headline)
                            .foregroundColor(.primary)

                        Spacer()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "phone")
                    }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "video")
                    }
                }
            }
            .navigationBarBackButtonHidden(true) // iOS geri okunu da gizler
        }
        .onAppear {
            UITabBar.appearance().isHidden = true
        }
        .onDisappear {
            UITabBar.appearance().isHidden = false
        }
    }
}
