
import SwiftUI
import UIKit

class CameraViewModel: NSObject, ObservableObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @Published var capturedImage: UIImage?
    @Published var isShowingCamera: Bool = false
    
    func openCamera() {
        isShowingCamera = true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let uiImage = info[.originalImage] as? UIImage {
            capturedImage = uiImage
        }
        isShowingCamera = false
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        isShowingCamera = false
    }
}




