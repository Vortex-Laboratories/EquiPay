//
//  EquiPayApp.swift
//  EquiPay
//
//  Created by Carlos on 9/9/24.
//

import SwiftUI

@main
struct EquiPayApp: App {
    init() {
        UIApplication.shared.setStatusBarStyle(.lightContent, animated: false)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView() 
            .preferredColorScheme(.dark)
            .background(Color.black)
        }
    }
}
