//
//  tapcout.swift
//  project1
//
//  Created by Minglin Chen on 10/1/23.
//

import Foundation

import SwiftUI

struct tapCount: View {
    @State var tapCount = 0
    
    var body: some View {
        Button("Tap Count:\(tapCount)"){
            tapCount += 1
        }
    }
}
        struct tapCout_Previews: PreviewProvider {
            static var previews: some View{
                tapCount()
            }
        }
