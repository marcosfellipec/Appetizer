//
//  Appetizer.swift
//  Appetizer
//
//  Created by Marcos-F Costa on 08/01/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let protein: Int
    let calories: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct MockData {

    static let sampleAppetizer = Appetizer(
        id: 1,
        name: "Test Appetizer",
        description: "This is the description of the appetizer. Yummy.",
        price: 99.99,
        imageURL: "",
        protein: 99,
        calories: 99,
        carbs: 99
    )

    static let appetizers = [sampleAppetizer1, sampleAppetizer2, sampleAppetizer3, sampleAppetizer4]

    private static let sampleAppetizer1 = Appetizer(
        id: 1,
        name: "Test Appetizer",
        description: "This is the description of the appetizer. Yummy.",
        price: 99.99,
        imageURL: "",
        protein: 99,
        calories: 99,
        carbs: 99
    )

    private static let sampleAppetizer2 = Appetizer(
        id: 2,
        name: "Test Appetizer",
        description: "This is the description of the appetizer. Yummy.",
        price: 99.99,
        imageURL: "",
        protein: 99,
        calories: 99,
        carbs: 99
    )

    private static let sampleAppetizer3 = Appetizer(
        id: 3,
        name: "Test Appetizer",
        description: "This is the description of the appetizer. Yummy.",
        price: 99.99,
        imageURL: "",
        protein: 99,
        calories: 99,
        carbs: 99
    )

    private static let sampleAppetizer4 = Appetizer(
        id: 4,
        name: "Test Appetizer",
        description: "This is the description of the appetizer. Yummy.",
        price: 99.99,
        imageURL: "",
        protein: 99,
        calories: 99,
        carbs: 99
    )
}
