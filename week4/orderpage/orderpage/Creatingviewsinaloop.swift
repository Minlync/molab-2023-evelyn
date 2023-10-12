//
//  ContentView.swift
//  orderpage
//
//  Created by Minglin Chen on 10/5/23.
//

import SwiftUI
import AVFoundation


struct Creatingviewsinaloop: View {
    @State private var audioPlayer: AVAudioPlayer?
    
    let food = ["Pizza", "Burger", "Noodles"]
    @State private var selectedFood = "Pizza"
    
    let drink = ["Coke", "Coffee", "Orange Juice"]
    @State private var selectedDrink = "Coke"
    
    let cake = ["Mille Cake", "Cheese Cake", "Green Tea Cake"]
    @State private var selectedCake = "Mille Cake"
    
    var body: some View {
        NavigationView {
            VStack {
              Image("topimage")
                  .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 300) // Adjust the image size
                    .cornerRadius(20)
                
                Form {
                    Section(header: Text("Select your food").foregroundColor(Color.blue)) {
                        HStack {
                            Image("food")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Picker("Select your food", selection: $selectedFood) {
                                ForEach(food, id: \.self) {
                                    Text($0)
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("Select your drink").foregroundColor(Color.blue)) {
                        HStack {
                            Image("drink")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Picker("Select your drink", selection: $selectedDrink) {
                                ForEach(drink, id: \.self) {
                                    Text($0)
                                }
                            }
                        }
                    }
                    
                    Section(header: Text("Select your cake").foregroundColor(Color.blue)) {
                        HStack {
                            Image("cake")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Picker("Select your cake", selection: $selectedCake) {
                                ForEach(cake, id: \.self) {
                                    Text($0)
                                }
                            }
                        }
                    }
                } /*end of Form section*/
                
                
                Button(action: {
                    if let soundPath = Bundle.main.path(forResource: "ding", ofType: "wav") {
                        let soundURL = URL(fileURLWithPath: soundPath)
                        do {
                            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                            audioPlayer?.play()
                        } catch {
                            print("Error loading sound file: \(error.localizedDescription)")
                        }
                    }
                }) {
                                   Text("Submit")
                                       .font(.title)
                                       .frame(width: 300, height: 20)
                                       .foregroundColor(.white)
                                       .padding()
                                       .background(Color.red)
                                       .cornerRadius(10)
                               }
                               .padding()
                           }
                       }
                   }


    struct Creatingviewsinaloop_Previews: PreviewProvider {
        static var previews: some View {
            Creatingviewsinaloop()
        }
    }
}


//source:
//https://www.hackingwithswift.com/books/ios-swiftui/creating-views-in-a-loop
