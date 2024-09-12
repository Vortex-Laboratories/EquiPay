//
//  HomeView.swift
//  EquiPay
//
//  Created by Carlos on 9/9/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView {
            HStack {
                Text("Balance")
                    .font(.largeTitle)
                    .foregroundColor(.white)
               
                
                Spacer()

                Image(systemName: "person.circle") // Placeholder
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.gray)
                   
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            DonutChartView()
                .padding()
            HStack {
                Text("Transactions")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    
                
                Spacer()
            }
            
            TransactionItemView()
                .padding(.vertical, 8)
            TransactionItemView()
                .padding(.vertical, 6)
            TransactionItemView()
                .padding(.vertical, 6)
            TransactionItemView()
                .padding(.vertical, 6)
            TransactionItemView()
                .padding(.vertical, 6)
 
            
                
            
            Spacer()
        } // End of ScrollView
        .padding(.horizontal)
    }
}

#Preview {
    HomeView()
}
