//
//  NetworkManager.swift
//  Appetizer
//
//  Created by Marcos-F Costa on 08/01/24.
//

import Foundation

class NetworkManager {

    enum Path: String {
        case appetizer = "/appetizers"
    }

    static let shared = NetworkManager()

    private let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals"

    private init() { }

    func getAppetizers() async throws -> [Appetizer] {
        guard let url = URL(string: baseURL + Path.appetizer.rawValue) else {
            throw APError.invalidURL
        }

        let (data, _) = try await URLSession.shared.data(from: url)

        do {
            return try JSONDecoder().decode(AppetizerResponse.self, from: data).request
        } catch {
            throw APError.invalidateData
        }
    }
}

enum APError: Error {
    case invalidateData
    case invalidURL
}
