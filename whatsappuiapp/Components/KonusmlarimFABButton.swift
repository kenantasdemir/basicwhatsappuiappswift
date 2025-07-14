

import SwiftUI

struct KonusmlarimFABButton: View {
    @State private var showFullScreen = false

    var body: some View {
        Button(action: {
            showFullScreen = true
        }) {
            Image(systemName: "message")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .frame(width: 56, height: 56)
                .background(Color.blue)
                .clipShape(Circle())
                .shadow(radius: 5)
        }
        .padding(.trailing, 16)
        .padding(.bottom, 16)
        .fullScreenCover(isPresented: $showFullScreen) {
            KisilerPageView()
        }
    }
}
