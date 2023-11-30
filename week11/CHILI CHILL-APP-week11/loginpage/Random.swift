import SwiftUI

struct Random: View {
    @State private var generatedFood = ""
    @State private var imageName = "imgfood1"
    
    let imageNames = ["imgfood1", "imgfood2", "imgfood3", "imgfood4", "imgfood5"]
    
    var body: some View {
        VStack {
            
            Spacer()
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
            Text(generatedFood)
                .font(.largeTitle)
                .padding()
            
            Button(action: generateRandomFood) {
                Text("Next One ")
                    .font(.headline)
                    .frame(maxWidth: 300, minHeight: 10)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
//            Spacer()
            /*place hold*/
            NavigationLink (destination:ContentView()){
                Text("Place Order")
                    .font(.headline)
                    .frame(maxWidth:300,minHeight: 10)
                    .padding()
                    .background(Color.red)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    
            }
            Spacer()
        }
        .navigationTitle("Random Food Generator")
    }
    
    func generateRandomFood() {
        // Replace this with your logic to generate a random name
        let randomNames = ["Speial Chicken", "Relax Best", "Weekend Choice", "On Fire", "Got Your Eyes"]
        generatedFood = randomNames.randomElement() ?? "No Name"
        
        // Set the image name to a random element from the array
        imageName = imageNames.randomElement() ?? ""
    }
}

struct Random_Previews: PreviewProvider {
    static var previews: some View {
        Random()
    }
}
