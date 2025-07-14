

import SwiftUI
import Photos

class GalleryViewModel: ObservableObject {
    @Published var fetchedImages: [UIImage] = []

    func fetchLatestImages(limit: Int = 9) {
        var uiImages: [UIImage] = []

        let fetchOptions = PHFetchOptions()
        fetchOptions.sortDescriptors = [
            NSSortDescriptor(key: "creationDate", ascending: false)
        ]
        fetchOptions.fetchLimit = limit

        let assets = PHAsset.fetchAssets(with: .image, options: fetchOptions)

        let imageManager = PHCachingImageManager()
        let imageRequestOptions = PHImageRequestOptions()
        imageRequestOptions.deliveryMode = .highQualityFormat
        imageRequestOptions.isSynchronous = false

        assets.enumerateObjects { asset, _, _ in
            let size = CGSize(width: 300, height: 300)
            imageManager.requestImage(for: asset, targetSize: size, contentMode: .aspectFill, options: imageRequestOptions) { image, _ in
                if let img = image {
                    DispatchQueue.main.async {
                        uiImages.append(img)
                        self.fetchedImages = uiImages
                    }
                }
            }
        }
    }
}
