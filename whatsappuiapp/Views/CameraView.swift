

import SwiftUI

struct CameraView: UIViewControllerRepresentable {
    @ObservedObject var viewModel: CameraViewModel
    
    func makeCoordinator() -> CameraViewModel {
        return viewModel
    }

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
}
