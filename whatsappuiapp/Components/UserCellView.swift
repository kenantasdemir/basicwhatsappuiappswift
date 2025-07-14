

import SwiftUI

struct UserCellView: View {
    var user: User
    @State private var showChat = false

    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: Date())
    }

    var body: some View {
        Button {
            showChat = true
        } label: {
            HStack(spacing: 12) {
                AsyncImage(url: URL(string: user.image)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 40, height: 40)
                .clipShape(Circle())

                VStack(alignment: .leading, spacing: 4) {
                    Text(user.name)
                        .font(.headline)
                        .foregroundColor(.primary)

                    Text(user.email)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }

                Spacer()

                Text(formattedDate)
                    .font(.system(size: 12))
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(12)
        }
        .fullScreenCover(isPresented: $showChat) {
            KonusmaView(user: user)
        }
        .buttonStyle(.plain)
    }
}
