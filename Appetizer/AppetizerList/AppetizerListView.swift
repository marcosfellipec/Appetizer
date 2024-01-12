//
//  ContentView.swift
//  Appetizer
//
//  Created by Marcos-F Costa on 29/12/23.
//

import SwiftUI

struct AppetizerListView: View {
    @State var appetizers: [Appetizer] = []
    var body: some View {
        NavigationView {
            List(appetizers) { appetizer in
                AppetizerListCellView(appetizer: appetizer)
            }
            .navigationTitle("Appetizers")
            .listStyle(.plain)
        }
        .task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    AppetizerListView()
}
