

import SwiftUI

struct GuncellemelerFABButtons: View {
    

    
    var body: some View {
        VStack(spacing: 16) {
            Button(action: {
                print("Üstteki küçük FAB tıklandı")
     
            }) {
                Image(systemName: "pencil")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .frame(width: 40, height: 40)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .shadow(radius: 4)
            }
            
            Button(action: {
                print("Alttaki büyük FAB tıklandı")
         
            }) {
                Image(systemName: "camera")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .frame(width: 56, height: 56)
                    .background(Color.green)
                    .clipShape(Circle())
                    .shadow(radius: 4)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
    }
}

