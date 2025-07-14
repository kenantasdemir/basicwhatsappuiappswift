

import SwiftUI
import Contacts

class ContactsViewModel: ObservableObject {
    @Published var contacts: [Contact] = []

    func requestAccess() {
        let store = CNContactStore()

        DispatchQueue.global(qos: .userInitiated).async {
            store.requestAccess(for: .contacts) { granted, error in
                if granted {
                    self.fetchContacts(store: store)
                } else {
                    print("Kişi erişim izni reddedildi.")
                }
            }
        }
    }

    private func fetchContacts(store: CNContactStore) {
        let keys = [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactPhoneNumbersKey] as [CNKeyDescriptor]
        let request = CNContactFetchRequest(keysToFetch: keys)

        var fetchedContacts: [Contact] = []

        do {
            try store.enumerateContacts(with: request) { (cnContact, stop) in
                let phones = cnContact.phoneNumbers.map { $0.value.stringValue }
                let contact = Contact(givenName: cnContact.givenName,
                                      familyName: cnContact.familyName,
                                      phoneNumbers: phones)
                fetchedContacts.append(contact)
            }
            DispatchQueue.main.async {
                self.contacts = fetchedContacts
            }
        } catch {
            print("Kişiler alınamadı: \(error)")
        }
    }
}
