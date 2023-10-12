//
//  ContentView.swift
//  week6
//
//  Created by Minglin Chen on 10/12/23.
//

import SwiftUI

class ViewController: UIViewController {
    let fm = FileManager.default
    let path = Bundle.main.resourcePath!
    let items = try! fm.contentsOfDirectory(atPath: path)
    
    for item in items {
        if item.hasPrefix("nssl") {
            // this is a picture to load!
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
