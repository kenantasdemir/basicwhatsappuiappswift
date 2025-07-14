
import SwiftUI
import PhotosUI

struct GuncellemelerView: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(spacing: 16) {
                     
                        HStack {
                            ZStack(alignment: .bottomTrailing) {
                                Image(systemName: "person.crop.circle.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.gray)

                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.green)
                                    .background(Circle().fill(Color.white).frame(width: 20, height: 20))
                                    .offset(x: 5, y: 5)
                            }

                            VStack(alignment: .leading) {
                                Text("Durumum")
                                    .font(.headline)
                                Text("Durum güncellemesi ekle")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }

                            Spacer()
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                        .contentShape(RoundedRectangle(cornerRadius: 12))
                        .onTapGesture {
                            showSheet.toggle()
                        }
                        .padding(.horizontal)
                        
        
                        Text("Görülen Güncellemeler")
                            .font(.title2)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)

             
                        LazyVStack(spacing: 12) {
                            ForEach(users) { user in
                                HStack {
                                    AsyncImage(url: URL(string: user.image)) { phase in
                                        if let image = phase.image {
                                            image
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 50, height: 50)
                                                .clipShape(Circle())
                                        } else if phase.error != nil {
                                            Image(systemName: "person.crop.circle.badge.exclamationmark")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                                .foregroundColor(.gray)
                                        } else {
                                            ProgressView()
                                                .frame(width: 50, height: 50)
                                        }
                                    }

                                    VStack(alignment: .leading) {
                                        Text(user.name)
                                            .font(.headline)
                                        Text(user.zaman)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }

                                    Spacer()
                                }
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(12)
                                .padding(.horizontal)
                            }
                        }
                    }
                    .padding(.top)
                }
                .navigationTitle("Güncellemeler")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                 
                    }
                }
                
                GuncellemelerFABButtons()
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            }
            .sheet(isPresented: $showSheet) {
                BottomSheetView()
                    .presentationDetents([.large])
            }
        }
    }
}

