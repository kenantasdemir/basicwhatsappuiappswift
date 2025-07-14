import SwiftUI

struct TopluluklarView: View {
    var body: some View {
        ScrollView {
            VStack {
               
                Image(systemName: "person.3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding(.top, 50)
                
                
                Button(action: {
             
                }, label: {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.white)
                            .font(.title2)
                        Text("İlk topluluğunuzu oluşturun")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.leading, 10)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .contentShape(Rectangle())
                })
                .padding(.horizontal)
                .padding(.top, 30)
                
              
                Text("İlginizi çekebilecek kanallar")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top, 30)
                    .padding(.bottom, 10)
                    .foregroundColor(.black)
                
             
                VStack(spacing: 15) {
                    HStack {
                        
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.trailing, 10)
                        
           
                        VStack(alignment: .leading) {
                            Text("Whatsapp")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            Text("Topluluğumuza katılın")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                   
                        Spacer()
                        Image(systemName: "plus")
                            .foregroundColor(.blue)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(.horizontal)
         
                    HStack {
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.trailing, 10)
                        
                        VStack(alignment: .leading) {
                            Text("Telegram")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            Text("Topluluğumuza katılın")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        Image(systemName: "plus")
                            .foregroundColor(.blue)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                }
                .padding(.bottom, 30)
            }
            .background(Color(UIColor.systemGray6)) 
            .cornerRadius(25)
            .padding()
        }
    }
}

#Preview {
    TopluluklarView()
}
