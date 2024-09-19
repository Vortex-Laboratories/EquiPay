//
//  BillView.swift
//  EquiPay
//
//  Created by Carlos on 9/17/24.
//

import SwiftUI

struct BillView: View {
    var body: some View {
        ScrollView {
            
            HStack {
                Text("Group Bill")
                    .font(.largeTitle)
                    .foregroundColor(.white)
               
                
                Spacer()

                HStack(spacing: -20) { 
                    ForEach(1...3, id: \.self) { index in
                        Image("person.circle")  // Placeholder
                            .resizable()
                            .scaledToFill()
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 1)
                            )
                    }
                }
                
                   
            }
            BillItemView()
            BillItemView()
            BillItemView()
            BillItemView()
            
            Spacer()
        }
        .padding(.horizontal) // End of ScrollView 
    }
}

#Preview {
    BillView()
}
