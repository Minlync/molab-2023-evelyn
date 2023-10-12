//
//  page2.swift
//  NavigationView
//
//  Created by Minglin Chen on 10/5/23.
//

import SwiftUI

struct loginhomepage: View {
    var body: some View{
        NavigationView{
            VStack{
                Spacer()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello,world!!!")
                Spacer()
                NavigationLink (destination:ContentView()){
                    Text("text")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 10)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                }
                NavigationLink (destination:ContentView()){
                    Text("Click to Navigate")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 10)
                        .padding()
                        .background(Color.blue) // Customize the background color as needed
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                }
                Spacer()
            }
        }
    }
}

struct loginhomepage_Preview : PreviewProvider {
    static var previews: some View{
        loginhomepage()
    }
}

//https://www.youtube.com/watch?v=-XcNs22WnTc

