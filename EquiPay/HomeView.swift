//
//  HomeView.swift
//  EquiPay
//
//  Created by Carlos on 9/9/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            HStack {
                Text("Balance")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()

                Image(systemName: "person.circle") // Placeholder
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.gray)
                    .padding()
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
