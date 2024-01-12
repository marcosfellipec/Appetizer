//
//  ContentView.swift
//  Appetizer
//
//  Created by Marcos-F Costa on 29/12/23.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }

        }
        .tint(.primary)
    }
}

#Preview {
    HomeTabView()
}
