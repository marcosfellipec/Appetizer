//
//  ContentView.swift
//  Appetizer
//
//  Created by Marcos-F Costa on 29/12/23.
//

import SwiftUI

struct AppetizerListView: View {
    @State var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCellView(appetizer: appetizer)
                }
                .navigationTitle("Appetizers")
                .listStyle(.plain)
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .task {
            await viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alert) { alert in
            Alert(
                title: alert.title,
                message: alert.message,
                dismissButton: alert.dismissButton
            )
        }
    }
}

#Preview {
    AppetizerListView()
}
