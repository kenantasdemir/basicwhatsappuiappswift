

import Foundation

enum CallType: String {
    case voice = "Sesli"
    case video = "Görüntülü"
}

enum CallStatus: String {
    case answered = "Cevaplı" 
    case all = "Tümü"
    case missed = "Cevapsız"
    
    var id: String { self.rawValue }
}

struct Call: Identifiable {
    var id = UUID()
    var username: String
    var phoneNumber: String
    var image: String  
    var callType: CallType
    var callStatus: CallStatus
    var callDate: Date
}

let calls: [Call] = [
    Call(username: "Ahmet Yılmaz", phoneNumber: "05001234567", image: "person.circle.fill", callType: .voice, callStatus: .answered, callDate: Date()),
    Call(username: "Ayşe Demir", phoneNumber: "05002345678", image: "person.circle.fill", callType: .video, callStatus: .missed, callDate: Date().addingTimeInterval(-3600)),
    Call(username: "Mehmet Can", phoneNumber: "05003456789", image: "person.circle.fill", callType: .voice, callStatus: .missed, callDate: Date().addingTimeInterval(-7200)),
    Call(username: "Elif Kaya", phoneNumber: "05004567890", image: "person.circle.fill", callType: .video, callStatus: .answered, callDate: Date().addingTimeInterval(-86400)),
    Call(username: "Kemal Öz", phoneNumber: "05005678901", image: "person.circle.fill", callType: .voice, callStatus: .answered, callDate: Date().addingTimeInterval(-90000)),
    Call(username: "Zeynep Arslan", phoneNumber: "05006789012", image: "person.circle.fill", callType: .video, callStatus: .missed, callDate: Date().addingTimeInterval(-120000)),
    Call(username: "Burak Şahin", phoneNumber: "05007890123", image: "person.circle.fill", callType: .voice, callStatus: .answered, callDate: Date().addingTimeInterval(-150000)),
    Call(username: "Seda Gül", phoneNumber: "05008901234", image: "person.circle.fill", callType: .video, callStatus: .missed, callDate: Date().addingTimeInterval(-180000)),
    Call(username: "Canan Tekin", phoneNumber: "05009012345", image: "person.circle.fill", callType: .voice, callStatus: .answered, callDate: Date().addingTimeInterval(-210000)),
    Call(username: "Emre Usta", phoneNumber: "05000123456", image: "person.circle.fill", callType: .video, callStatus: .missed, callDate: Date().addingTimeInterval(-240000))
]

