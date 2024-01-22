//
//  AppetizerListDetailView.swift
//  Appetizer
//
//  Created by Marcos Fellipe Costa Silva on 21/01/24.
//

import SwiftUI

struct AppetizerListDetailView: View {
    @State var appetizer: Appetizer
    
    var body: some View {
        ZStack {
            VStack {
                RemoteImage(urlString: appetizer.imageURL)
                    .ignoresSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 225)
                    .clipped()
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack {
                    NutritionInfoView(
                        name: "Calories",
                        value: "\(appetizer.calories)"
                    )
                    NutritionInfoView(
                        name: "Carbs",
                        value: "\(appetizer.carbs)"
                    )
                    NutritionInfoView(
                        name: "Protein",
                        value: "\(appetizer.protein)"
                    )
                }
                .padding()
                Spacer()
                
                Button {
                    
                } label: {
                    AppetizerButton(title: "Order")
                }
                .padding(.bottom, 30)
                
            }
        }
        .background(Color(.systemBackground))
        .frame(width: 330, height: 525)
        .cornerRadius(12)
        .shadow(radius: 40)
        
    }
}

#Preview {
    AppetizerListDetailView(appetizer: MockData.sampleAppetizer)
}

struct NutritionInfoView: View {
    var name: String
    var value: String
    var body: some View {
        VStack(spacing: 5) {
            Text(name)
                .font(.body)
                .bold()
            Text(value)
                .font(.body)
                .fontWeight(.semibold)
                .italic()
        }
        .padding()
    }
}
