
import SwiftUI

struct KonusmalarimView: View {
    @State private var searchText = ""
    @StateObject private var cameraVM = CameraViewModel()

    
    var filteredUsers: [User] {
        if searchText.isEmpty {
            return users
        } else {
            return users.filter {
                $0.name.localizedCaseInsensitiveContains(searchText) ||
                $0.email.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    LazyVStack {
                        ForEach(filteredUsers) { user in
                            UserCellView(user: user)
                        }
                    }
                    .padding(.bottom, 80)
                }
                
                KonusmlarimFABButton()
            }
         
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Ara...")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        cameraVM.openCamera()
                    } label: {
                        Image(systemName: "camera")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        Button(action: {
                            print("Yeni grup seçildi")
                        }) {
                            Label("Yeni Grup", systemImage: "person.2")
                        }
                        
                        Button(action: {
                            print("Yeni toplu mesaj")
                        }) {
                            Label("Yeni toplu mesaj", systemImage: "megaphone")
                        }
                        
                        Button(action: {
                            print("Bağlı cihazlar ")
                        }) {
                            Label("Bağlı cihazlar", systemImage: "link")
                        }
                        Button(action: {
                            print("Yıldızlı ")
                        }) {
                            Label("Yıldızlı.", systemImage: "star.fill")
                        }
                        
                        Divider()
                        
                        Button(action: {
                            print("Ayarlar seçildi")
                        }) {
                            Label("Ayarlar", systemImage: "gear")
                        }
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
        .sheet(isPresented: $cameraVM.isShowingCamera) {
            
                CameraView(viewModel: cameraVM)
            }
    }
}

