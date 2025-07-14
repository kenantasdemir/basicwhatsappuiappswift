

import Foundation

struct Contact: Identifiable {
    let id = UUID()
    let givenName: String
    let familyName: String
    let phoneNumbers: [String]
}
