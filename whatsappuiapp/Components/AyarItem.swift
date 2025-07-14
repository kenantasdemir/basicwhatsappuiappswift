
import SwiftUI

struct AyarItem: View {
    var title: String
    var subtitle: String
    var imageName: String

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: imageName)
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)

            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.headline)
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.vertical, 8)
        .contentShape(Rectangle())
        .onTapGesture {
            print("\(title) tıklandı")
        }
    }
}
