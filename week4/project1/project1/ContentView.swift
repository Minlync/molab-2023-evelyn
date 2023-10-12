//
//  ContentView.swift
//  project1
//
//  Created by Minglin Chen on 10/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = "";
//    @State is a property wrapper in SwiftUI that is used to create a mutable state property. In this case, you have declared @State private var name = "", which means you have a mutable property called name that is initially an empty string.
    
   var body: some View {
            Form {
                TextField("Enter your name", text:$name)
//                property, and any changes made to the name property will update the text field's content. This is a two-way binding.
                Text("User Name is\(name)")
            }
        }
    }
//    var body: some View {
//        NavigationView {
//            Form {
//                //            group2, also can do section
//                Section {
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    
//                }
//            }
//            .navigationTitle("SwiftUI")  /*this is tittle*/
////            .navigationBarTitleDisplayMode(.inline)
////            group2 added group with not gap but added section can add a gap between section and section
//            Section {
//                Text("Hello, world!")
//                Text("Hello, world!")
//            }
//        }
//    }
//}
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View{
                ContentView()
            }
        }

