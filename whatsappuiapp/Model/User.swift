
import Foundation

class User:Identifiable{
    var id:UUID = UUID()
    var name :String
    var email:String
    var image:String
    let zaman: String
    var phoneNumber:String
    
    init(name: String, email: String, image: String, phoneNumber: String,zaman:String) {
        self.name = name
        self.email = email
        self.image = image
        self.phoneNumber = phoneNumber
        self.zaman = zaman
    }
}

let users: [User] = [
    User(name: "Ahmet Yılmaz", email: "ahmetyilmaz@gmail.com", image: "https://images.unsplash.com/photo-1603415526960-f8f9e0e1ed16", phoneNumber: "05001234567", zaman: "5 dakika önce"),
    User(name: "Ayşe Demir", email: "aysedemir@hotmail.com", image: "https://images.unsplash.com/photo-1544005313-94ddf0286df2", phoneNumber: "05002345678", zaman: "10 dakika önce"),
    User(name: "Mehmet Can", email: "mehmetcan@yahoo.com", image: "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e", phoneNumber: "05003456789", zaman: "20 dakika önce"),
    User(name: "Elif Kaya", email: "elifkaya@gmail.com", image: "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d", phoneNumber: "05004567890", zaman: "30 dakika önce"),
    User(name: "Kemal Öz", email: "kemaloz@outlook.com", image: "https://images.unsplash.com/photo-1517841905240-472988babdf9", phoneNumber: "05005678901", zaman: "1 saat önce"),
    User(name: "Zeynep Arslan", email: "zeyneparslan@gmail.com", image: "https://images.unsplash.com/photo-1531123897727-8f129e1688ce", phoneNumber: "05006789012", zaman: "1 saat 15 dakika önce"),
    User(name: "Burak Şahin", email: "buraksahin@yahoo.com", image: "https://images.unsplash.com/photo-1502767089025-6572583495b0", phoneNumber: "05007890123", zaman: "2 saat önce"),
    User(name: "Seda Gül", email: "sedagul@hotmail.com", image: "https://images.unsplash.com/photo-1520813792240-56fc4a3765a7", phoneNumber: "05008901234", zaman: "2 saat 30 dakika önce"),
    User(name: "Canan Tekin", email: "canantekin@gmail.com", image: "https://images.unsplash.com/photo-1527980965255-d3b416303d12", phoneNumber: "05009012345", zaman: "3 saat önce"),
    User(name: "Emre Usta", email: "emreusta@gmail.com", image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde", phoneNumber: "05000123456", zaman: "4 saat önce"),
    User(name: "Mert Eren", email: "merteren@gmail.com", image: "https://images.unsplash.com/photo-1494790108377-be9c29b29330", phoneNumber: "05001112223", zaman: "5 saat önce"),
    User(name: "Aslı Kılıç", email: "aslikilic@hotmail.com", image: "https://images.unsplash.com/photo-1544723795-3fb6469f5b39", phoneNumber: "05002223334", zaman: "6 saat önce"),
    User(name: "Cem Bozkurt", email: "cembozkurt@gmail.com", image: "https://images.unsplash.com/photo-1511367461989-f85a21fda167", phoneNumber: "05003334445", zaman: "7 saat önce"),
    User(name: "Buse Yıldız", email: "buseyildiz@yahoo.com", image: "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e", phoneNumber: "05004445556", zaman: "8 saat önce"),
    User(name: "Tolga Şimşek", email: "tolgasimsek@gmail.com", image: "https://images.unsplash.com/photo-1607746882042-944635dfe10e", phoneNumber: "05005556667", zaman: "9 saat önce")
]
