//
//  ContentView.swift
//  FoodOrderApp
//
//  Created by Abdul Hassan on 5/28/24.
//

import SwiftUI

struct FoodOrderTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Order")
                }
        }
        .tint(.brandPrimary)
    }
}

#Preview {
    FoodOrderTabView()
}
