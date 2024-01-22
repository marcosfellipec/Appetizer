//
//  LoadingView.swift
//  Appetizer
//
//  Created by Marcos Fellipe Costa Silva on 21/01/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            ProgressView()
                .progressViewStyle(.circular)
                .controlSize(.extraLarge)
                .tint(.accent)
        }
    }
}

#Preview {
    LoadingView()
}
