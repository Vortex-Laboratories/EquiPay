//
//  BillItemView.swift
//  EquiPay
//
//  Created by Carlos on 9/17/24.
//

import SwiftUI

struct BillItemView: View {
    @State private var isChecked = false
    
    var body: some View {
        HStack {
            Button(action: {
                isChecked.toggle()
            }) {
                HStack {
                    Image(systemName: isChecked ? "checkmark.square" : "square")
                        .foregroundColor(isChecked ? .green : .primary)
                        .font(.system(size: 24))
                    Text("BBQ Ribs")
                        .fontWeight(.semibold)
                }
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
                Text("$28.21")
                    .fontWeight(.semibold)
            
        }
        .foregroundStyle(.white)
        .padding(.vertical)
    }
}

#Preview {
    BillItemView()
}
