

import SwiftUI

struct AramalarFABButton: View {
    @State private var showSettingsScreen = false

    var body: some View {
        Button(action: {
            showSettingsScreen = true
        }) {
            Image(systemName: "gear")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .frame(width: 56, height: 56)
                .background(Color.blue)
                .clipShape(Circle())
                .shadow(radius: 5)
        }
        .fullScreenCover(isPresented: $showSettingsScreen) {
            HesapAyarlari()
        }
    }
}

