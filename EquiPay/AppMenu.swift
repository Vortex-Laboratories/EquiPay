//
//  AppMenu.swift
//  EquiPay
//
//  Created by Carlos on 9/11/24.
//

import SwiftUI

struct AppMenu: View {
   
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            // Screens for each tab
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(0)
                Screen2()
                    .tag(1)
                Screen3()
                    .tag(2)
            }
            .tabViewStyle(.page)
            
            // Floating bottom menu
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            selectedTab = 0
                        }) {
                            VStack {
                                Image(systemName: "house") // Icon for Tab 1
                                    .resizable()
                                    .frame(width: 22, height: 20)
                            }
                            .padding()
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            selectedTab = 1
                        }) {
                            VStack {
                                Image(systemName: "plus") // Icon for Tab 2
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                            .padding()
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            selectedTab = 2
                        }) {
                            VStack {
                                Image(systemName: "person") // Icon for Tab 3
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                            .padding()
                        }
                    }
                    .frame(width: 200, height: 40)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .background(Color(hex: 0x313131))
                    .cornerRadius(24)
                    .shadow(radius: 24)
                    
                    Spacer()
                }
            }
        }
        .foregroundColor(.white)
    }
    
}

struct Screen1: View {
    var body: some View {
        VStack {
            Text("Screen 1")
                .font(.largeTitle)
                .foregroundColor(.black)
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct Screen2: View {
    var body: some View {
        VStack {
            Text("Screen 2")
                .font(.largeTitle)
                .foregroundColor(.black)
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct Screen3: View {
    var body: some View {
        VStack {
            Text("Screen 3")
                .font(.largeTitle)
                .foregroundColor(.black)
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

#Preview {
    AppMenu()
    
}
