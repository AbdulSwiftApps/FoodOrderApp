//
//  AppetizerView.swift
//  FoodOrderApp
//
//  Created by Abdul Hassan on 5/28/24.
//

import SwiftUI

struct AppetizerCellView: View {
    let mockData: Appetizer
    
    var body: some View {
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .frame(width: 120, height: 90)
                .clipShape(.rect(cornerRadius: 8))
                .overlay {
                    RoundedRectangle(cornerRadius: 8).stroke(Color.black)
                }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("\(mockData.name)")
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(mockData.price, specifier: "%.2f")")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerCellView(mockData: MockData.sampleAppetizer)
}
