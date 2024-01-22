//
//  AppetizerListViewModel.swift
//  Appetizer
//
//  Created by Marcos Fellipe Costa Silva on 21/01/24.
//

import SwiftUI
import Observation

@Observable
class AppetizerListViewModel {
    var appetizers: [Appetizer] = []
    var alert: AlertItem?
    
    var isLoading = false
    
    func getAppetizers() async {
        do {
            isLoading = true
            appetizers = try await NetworkManager.shared.getAppetizers()
            isLoading = false
        } catch  {
            isLoading = false
            if let apError = error as? APError {
                switch apError {
                case .invalidateData:
                    alert = AlertContext.invalidData
                case .invalidURL:
                    alert = AlertContext.invalidURL
                }
            }
        }
    }
}
