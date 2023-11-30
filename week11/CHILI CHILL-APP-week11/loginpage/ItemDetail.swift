//
//  ItemDetail.swift
//  iDine
//
//  Created by Paul Hudson on 08/02/2021.
//

import SwiftUI

struct ItemDetail: View {
    let side = ["Avocado Salad", "Coleslaw", "Smashed Potatoes"]
    @State private var selectedSide = "Coleslaw"
    
    let drink = ["Coke", "Coffee", "Orange Juice"]
    @State private var selectedDrink = "Coke"
    
    let sauce = ["Mayonnaise", "Ketchup", "Paprika"]
    @State private var selectedSauce = "Ketchup"
    
    @EnvironmentObject var order: Order
    let item: MenuItem

    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 335)
                    .padding(4)
                    .background(Color.white)
                    .font(.caption)
                    .foregroundColor(.white)
//                    .offset(x: -5, y: -5)
            }

            Text(item.description)
                .padding()
            Form {
                Section(header: Text("Select Your Side").foregroundColor(Color.blue)) {
                    HStack {
                        Image("side")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Picker("Pick One", selection: $selectedSide) {
                            ForEach(side, id: \.self) { side in
                                Text(side)
                            }
                        }
                    }
                    
                }
                
                
                Section(header: Text("Select your drink").foregroundColor(Color.blue)) {
                    HStack {
                        Image("soda")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Picker("Select your drink", selection: $selectedDrink) {
                            ForEach(drink, id: \.self) { drink in
                                Text(drink)
                            }
                        }
                    }
                }
               
                Section(header: Text("Select your sauce").foregroundColor(Color.blue)) {
                    HStack {
                        Image("ketchup")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Picker("Select your sauce", selection: $selectedSauce) {
                            ForEach(sauce, id: \.self) { sauce in
                                Text(sauce)
                            }
                        }
                    }
                }
        
                
            } 

            Button("Order This") {
                order.add(item: item)
            }
//            .buttonStyle(.borderedProminent）
                .font(.title)
                .frame(width: 300, height: 15)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .cornerRadius(10)

            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetail(item: MenuItem.example)
                .environmentObject(Order())
        }
    }
}
