//
//  ContentView.swift
//  loginpage
//
//  Created by Minglin Chen on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    @State private var showRecoveryImage = false
//    @State private var showNewPage = false
    var body: some View {
            if vm.authenticated {
                // Show the view you want users to see when logged on
                VStack(spacing: 20) {
                    Text("Welcome back **\(vm.username.lowercased())**!")
                    Text("Today is: **\(Date().formatted(.dateTime))**")
                    
                    Button("Log out", action: vm.logOut)
                        .tint(.red)
                        .buttonStyle(.bordered)
                }
            } else {
                // Show a login screen
                ZStack {
                    if showRecoveryImage {
                        // Display the recovery image as the background
                        Image("recoveryImage") // Replace "recoveryImage" with your image name
                            .resizable()
                            .cornerRadius(20)
                            .ignoresSafeArea()
                    } else {
                        // Display the home background image
                        Image("homebg")
                            .resizable()
                            .cornerRadius(20)
                            .ignoresSafeArea()
                    }
                    
                    VStack(alignment: .center, spacing: 20) {
                        Spacer()
                        // ... Your text fields and other UI elements
                        
                        Button(action: {
                            vm.logPressed()
                            showRecoveryImage.toggle() // Toggle background image
                        }) {
                            Text("Start Your Chill")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, minHeight: 10)
                                .padding()
                                .background(Color.red)
                                .cornerRadius(10)
                                .padding(.horizontal, 20) // Add padding to match the Log In button
                        }
                        
//                        NavigationView{
                            NavigationLink(destination: randomfood()) {
                                Text("Create Your Account")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, minHeight: 10)
                                    .padding()
                                    .background(Color.blue) // Customize the background color as needed
                                    .cornerRadius(10)
                                    .padding(.horizontal, 20) // Add padding to match the Start Your Chill button
                            }
                        }
                        //                    Button(action: {
                        //                        showNewPage.toggle()
                        //                    }) {
                        //                        Text("Create Your Account")
                        //                            .foregroundColor(.white)
                        //                            .frame(maxWidth: .infinity, minHeight: 10)
                        //                            .padding()
                        //                            .background(Color.blue) // Customize the background color as needed
                        //                            .cornerRadius(10)
                        //                            .padding(.horizontal, 20) // Add padding to match the Start Your Chill button
                        //                    }
                        //
                        Spacer()
                    }
                    
                    .alert("Access denied", isPresented: $vm.invalid) {
                        Button("Dismiss", action: vm.logPressed)
                    }
                    .padding(.top, 90)
                    .frame(width: 300)
                    .padding(.top, 50)
                }
            }
        }
    
struct randomfood: View {
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
                Text("Pick Random Food")
                    .font(.headline)
                    .frame(maxWidth: 300, minHeight: 10)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .navigationTitle("Random Food Generator")
    }
    
    func generateRandomFood() {
        // Replace this with your logic to generate a random name
        let randomNames = ["food1", "food2", "food3", "food4", "food5"]
        generatedFood = randomNames.randomElement() ?? "No Name"
        
        // Set the image name to a random element from the array
        imageName = imageNames.randomElement() ?? ""
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


    
//source:https://www.youtube.com/watch?v=BU-FtY5-RTM
//https://www.youtube.com/watch?v=tXFwyFdkSas&t=584s



