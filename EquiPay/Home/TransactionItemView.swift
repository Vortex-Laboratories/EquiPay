//
//  TransactionItemView.swift
//  EquiPay
//
//  Created by Carlos on 9/11/24.
//

import SwiftUI

struct TransactionItemView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Olive Garden Restaurant")
                    .fontWeight(.semibold)
                Text("0.2507 SOL")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("$34.21")
                    .fontWeight(.semibold)
                Text(Date().formatted(date: .numeric, time: .omitted))
                    .font(.caption)
                    .foregroundStyle(Color.gray)
                
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    TransactionItemView()
}
