

import SwiftUI

struct ContentView:View {
    @State private var image: Image?
    @State private var inputImage: UIImage?
    @State private var showingImagePick = false
    var body: some View {
        VStack
        {
            image?
                .resizable()
                .scaledToFill()
            
            Button("Select Image"){
                showingImagePick = true
            }
        }
        .sheet(isPresented: $showingImagePick) {
            ImagePicker(image: $inputImage)
        }
        .onChange(of: inputImage) { _ in loadImage()}
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
