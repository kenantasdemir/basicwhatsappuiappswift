
import SwiftUI

struct AramalarView: View {
    @State private var selectedFilter: CallStatus = .all

    var filteredCalls: [Call] {
        switch selectedFilter {
        case .all:
            return calls
        default:
            return calls.filter { $0.callStatus == selectedFilter }
        }
    }

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Picker("Filtrele", selection: $selectedFilter) {
                    Text("Tümü").tag(CallStatus.all)
                    Text("Cevapsız").tag(CallStatus.missed)
                    Text("Cevaplı").tag(CallStatus.answered)
                }
                .pickerStyle(.segmented)
                .padding()

                List {
                    Section(header: Text("Favoriler")) {
                   
                            HStack {
                                Image(systemName: "person")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)

                                VStack(alignment: .leading) {
                                    Text("kenant103")
                                    Text("0543 323 22 54")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }

                                Spacer()

                                HStack(spacing: 16) {
                                    Image(systemName: "phone")
                                    Image(systemName: "video")
                                }
                            }
                            .padding(.vertical, 8)
                        
                    }

                    Section(header: Text("Diğer Aramalar")) {
                        ForEach(filteredCalls) { call in
                            HStack {
                                Image(systemName: call.image)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 40, height: 40)

                                VStack(alignment: .leading) {
                                    Text(call.username)

                                    HStack(spacing: 6) {
                                        Image(systemName: call.callStatus == .missed ? "arrow.down.left" : "arrow.up.right")
                                            .foregroundColor(call.callStatus == .missed ? .red : .green)
                                            .font(.system(size: 14, weight: .bold))

                                        Text(call.phoneNumber)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                }

                                Spacer()

                                Image(systemName: call.callType == .voice ? "phone" : "video")
                            }
                            .padding(.vertical, 8)
                        }
                    }
                }
                .listStyle(.insetGrouped)
            }

 
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    AramalarFABButton()
                        .padding(.bottom, 10)
                        .padding(.trailing, 20)
                }
            }
        }
        .navigationTitle("Aramalar")
    }
}
