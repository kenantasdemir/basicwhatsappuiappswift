import SwiftUI

struct HesapAyarlari: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            List {
       
                Section {
                    HStack(spacing: 12) {
                        ZStack(alignment: .bottomTrailing) {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.gray)

                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .background(
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 20, height: 20)
                                )
                                .offset(x: 5, y: 5)
                        }

                        VStack(alignment: .leading, spacing: 4) {
                            Text("Kenan")
                            Text("Merhaba ben whatsapp kullanıyorum")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }

                        Spacer()

                        HStack(spacing: 12) {
                            Image(systemName: "qrcode")
                            Image(systemName: "plus.circle")
                        }
                    }
                    .padding(.vertical, 8)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        print("Profil kartına tıklandı ✅")
                    }
                }
                
         
                Section {
                    AyarItem(title: "Hesap", subtitle: "Güvenlik Bildirimleri, numara değiştirme", imageName: "key.horizontal.fill")
                    AyarItem(title: "Gizlilik", subtitle: "Kişileri engelleme", imageName: "lock.fill")
                    AyarItem(title: "Avatar", subtitle: "Oluşturma düzenleme, profil fotoğrafı", imageName: "person.crop.circle")
                    AyarItem(title: "Listeler", subtitle: "Kişi ve grupları yönetin", imageName: "arrow.down.circle.fill")
                    AyarItem(title: "Sohbetler", subtitle: "Tema, duvar kağıtları, sohbet geçmişi", imageName: "questionmark.circle.fill")
                    
                    
                    AyarItem(title: "Bildirimler", subtitle: "Mesaj, grup ve arama sesleri", imageName: "bell.fill")
                    AyarItem(title: "Depolama ve veriler", subtitle: "Ağ kullanımı, otomatik indirme", imageName: "circle.dotted")
                    AyarItem(title: "Erişilebilirlik", subtitle: "Animasyon", imageName: "figure.child")
                    AyarItem(title: "Uygulama dili", subtitle: "Türkçe", imageName: "globe")
                    AyarItem(title: "Yardım", subtitle: "Yardım merkezi, bize ulaşın, gizlilik ilkesi", imageName: "questionmark.circle")
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Ayarlar")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
    }
}



