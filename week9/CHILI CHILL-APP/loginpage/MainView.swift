//
//  SwiftUIView.swift
//  loginpage
//
//  Created by Minglin Chen on 11/8/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            Combined()
                .tabItem {
                    Label("Menu",systemImage: "house")
                }
            listview()
                .tabItem {
                    Label("Menu",systemImage: "list.dash")
                }
            listview()
                .tabItem {
                    Label("Order",systemImage: "square.and.pencil")
                }
        }
                .accentColor(.red)
        }
    }
   




#Preview {
    MainView()
}
