import SwiftUI

struct Combined: View {
    let imageNames = ["image1", "image2", "image3"]
    let silider2 = ["Overloaded  Beef Burger", "6thSense  Chicken Nuggets", "nothing special  chicken wings"]
    
    @State private var tabSelected: Tab = .house
    
    var body: some View {
        ZStack {
            VStack {
                /* First ScrollView Section */
                VStack {
                    Text("WHAT'S THE NEW")
                        .font(.system(size: 25))
                        .padding(.leading, -145)
                        .foregroundColor(.gray)
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<imageNames.count) { index in
                            NavigationLink(destination: destinationForImage(at: index)) {
                                Image(imageNames[index])
                                    .resizable()
                                    .frame(width: 286, height: 327)
                            }
                        }
                    }
                }
                .padding(.top, -25)
                .padding(20)
                
                /* Second ScrollView Section */
                VStack {
                    Text("SNACKS")
                        .font(.system(size: 25))
                        .padding(.leading, -170)
                        .foregroundColor(.gray)
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0..<silider2.count) { index in
                            VStack {
                                Image(silider2[index])
                                    .resizable()
                                    .frame(width: 130, height: 130)
                                
                                Text(silider2[index])
                                    .frame(width: 150)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                        }
                    }
                }
                .padding(.top, -25)
                .padding(20)
            }
            
            VStack {
                Spacer()
                CustomTabBar(selectedTab: $tabSelected)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    // Move this function inside the struct
    func destinationForImage(at index: Int) -> some View {
        switch index {
        case 0:
            return burgerdetails()
        case 1:
            return AnyView(Text("somewhere"))
        case 2:
            return AnyView(Text("somewhere"))
        default:
            return AnyView(EmptyView())
        }
    }
}

struct Combined_Previews: PreviewProvider {
    static var previews: some View {
        Combined()
    }
}
