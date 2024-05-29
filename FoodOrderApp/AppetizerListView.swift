//
//  AppetizerListView.swift
//  FoodOrderApp
//
//  Created by Abdul Hassan on 5/28/24.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers, id: \.id) { appetizer in
                AppetizerCellView(mockData: appetizer)
            }
            .navigationTitle("🍟 Appetizer")
        }
        
    }
}

#Preview {
    AppetizerListView()
}
