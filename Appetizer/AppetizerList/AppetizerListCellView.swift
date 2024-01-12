//
//  Teste.swift
//  Appetizer
//
//  Created by Marcos-F Costa on 08/01/24.
//

import SwiftUI

struct AppetizerListCellView: View {
    @State var appetizer: Appetizer
    var body: some View {
        HStack {
            RemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 90)
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {

                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)

                Text("$\(appetizer.price, specifier: "%2.f")")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCellView(appetizer: MockData.sampleAppetizer)
}
