//
//  DonutChartView.swift
//  EquiPay
//
//  Created by Carlos on 9/11/24.
//

import SwiftUI
import Charts

struct DonutChartView: View {
    
    @State private var categories: [Category] = [
        .init(name: "Restaurants", percentage: 0.6, color: .yellow),
        .init(name: "Utilities", percentage: 0.25, color: .purple),
        .init(name: "Friends", percentage: 0.15, color: .pink)
    ]
    
    var body: some View {
        VStack {
            ZStack {
                // Donut Chart using SectorMark
                Chart(categories) { category in
                    SectorMark(
                        angle: .value("Category", category.percentage),  // The angle based on the percentage
                        innerRadius: .ratio(0.7),  // Creates a hollow effect to form a donut chart
                        angularInset: 2  // Space between the segments
                    )
                    .foregroundStyle(category.color)  // The color for each segment
                }
                .frame(height: 300)  // Size of the donut chart
                
                // Central Text
                Text("$247.65")
                    .font(.title)
                    .foregroundColor(.white)
            }
            // Legend
            HStack(spacing: 20) {
                LabelView(color: .yellow, text: "Restaurants")
                LabelView(color: .purple, text: "Utilities")
                LabelView(color: .pink, text: "Friends")
            }
            .padding(.top, 20)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

// Data structure for chart categories
struct Category: Identifiable {
    let id = UUID()
    var name: String
    var percentage: Double
    var color: Color
}

// Legend label view
struct LabelView: View {
    var color: Color
    var text: String
    
    var body: some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 12, height: 12)
            Text(text)
                .foregroundColor(.gray)
                .font(.footnote)
        }
    }
}

#Preview {
    DonutChartView()
}
