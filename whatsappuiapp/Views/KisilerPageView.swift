
import SwiftUI
import Contacts

struct KisilerPageView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var vm = ContactsViewModel()

    var body: some View {
        NavigationStack {
            List {
                Section (header:Text("Seçenekler")){
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray)
                        Text("Yeni kişi seç")
                            .font(.headline)
                    }
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray)
                        Text("Yeni kişi oluştur")
                            .font(.headline)
                    }
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray)
                        Text("Yeni grup oluştur")
                            .font(.headline)
                    }
                }

                Section(header: Text("Kişiler")) {
                    ForEach(vm.contacts) { contact in
                        let firstPhone = contact.phoneNumbers.first ?? "Telefon numarası yok"
                        
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.gray)

                            VStack(alignment: .leading) {
                                Text("\(contact.givenName) \(contact.familyName)")
                                    .font(.headline)
                                
                                Text(firstPhone)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Kişiler")
            .onAppear {
                vm.requestAccess()
            }
            .navigationBarItems(trailing:
                Button("Kapat") {
                    dismiss()
                }
            )
        }
    }
}
