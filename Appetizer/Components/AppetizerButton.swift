//
//  AppetizerButton.swift
//  Appetizer
//
//  Created by Marcos Fellipe Costa Silva on 21/01/24.
//

import SwiftUI

struct AppetizerButton: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(.accent)
            .foregroundStyle(.white)
            .cornerRadius(5)
    }
}

#Preview {
    AppetizerButton(title: "Button")
}
