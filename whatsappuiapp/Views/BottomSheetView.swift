
import SwiftUI

struct BottomSheetView: View {
    @StateObject private var galleryVM = GalleryViewModel()

    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack {
            Text("Durum güncellemesi")
                .font(.title)
                .padding(.top)

            HStack {
                OutlinedButton(title: "Metin", action: {})
                OutlinedButton(title: "Yerleşim", action: {})
                OutlinedButton(title: "Ses", action: {})
            }

    
            LazyVGrid(columns: items, spacing: 2) {
                ForEach(galleryVM.fetchedImages.indices, id: \.self) { index in
                    Image(uiImage: galleryVM.fetchedImages[index])
                        .resizable()
                        .scaledToFill()
                        .frame(height: 160)
                        .clipped()
                }
            }
            .padding(.top)

            OutlinedButton(title: "Paylaş", action: {})
                .padding(.top)
        }
        .padding()
        .frame(height: 800)
        .presentationDragIndicator(.visible)
        .onAppear {
            galleryVM.fetchLatestImages()
        }
    }
}
