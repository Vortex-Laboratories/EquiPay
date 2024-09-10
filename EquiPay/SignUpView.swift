//
//  SignUpView.swift
//  EquiPay
//
//  Created by Carlos on 9/9/24.
//

import SwiftUI

struct SignUpView: View {
    
    var body: some View {
        ZStack {
            
            VStack {
                Image("signup-background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: UIScreen.main.bounds.height * 0.65)
                
                HStack(spacing: 0) {
                    Text("Welcome \nto EquiPay")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                
                HStack(spacing: 20) {
                    
                    Button(action: {
                        // Action for Sign In
                    }) {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(100)
                    }
                    
                    Button(action: {
                        // Action for Sign Up
                    }) {
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color.white)
                            .cornerRadius(100)
                    }
                }
                .padding(.horizontal)
                    
                
                Spacer()
                
            }
          
        }
        .background(Color.black)
    }
}

#Preview {
    SignUpView()
}
