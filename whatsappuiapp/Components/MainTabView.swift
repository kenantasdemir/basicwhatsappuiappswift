

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection:$selectedTab){
            
            KonusmalarimView().tabItem {
                VStack {
                    Image(systemName: selectedTab == 0 ? "message.fill":"message")
                        .environment(\.symbolVariants,selectedTab == 0 ? .fill: .none)
                    Text("Konusmalarım")
                }.foregroundStyle(.red)
            }
            .onAppear{ selectedTab = 0 }
            .tag(0)
            
            GuncellemelerView().tabItem{
                VStack{
                    Image(systemName:  "arrow.triangle.2.circlepath.circle")
                        .environment(\.symbolVariants,selectedTab == 1 ? .fill: .none)
                    Text("Güncellemeler")
                }
            }
            .onAppear{ selectedTab = 1 }
            .tag(1)
            
            TopluluklarView().tabItem{
                VStack{
                    Image(systemName: "person.3")
                        .environment(\.symbolVariants,selectedTab == 2 ? .fill: .none)
                    Text("Topluluklar")
                }
            }
            .onAppear{ selectedTab = 2 }
            .tag(2)
            
            AramalarView().tabItem{
                VStack{
                    Image(systemName: "phone")
                        .environment(\.symbolVariants,selectedTab == 3 ? .fill: .none)
                    Text("Aramalar")
                }
            }
            .onAppear{
                selectedTab = 3
            }
            .tag(3)
            
           
                
            
        }
    
        
    }
}

#Preview {
    MainTabView()
}
