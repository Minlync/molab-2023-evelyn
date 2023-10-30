//
//  listview.swift
//  loginpage
//
//  Created by Minglin Chen on 10/25/23.
//

import SwiftUI

struct listview: View {
    let food = foodList
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(food, id: \.self) { food in
                    NavigationLink(destination: Text(food)) {
                        Image(systemName: "")
                        Text(food)
                            
                    }.padding()
                }
                .navigationTitle("Food Tittle")
                .position(x: 150, y: 30)
            }
        }
    }
}

struct listview_Previews: PreviewProvider {
    static var previews: some View {
        listview()
    }
}
