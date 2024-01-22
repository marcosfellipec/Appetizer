//
//  Alert.swift
//  Appetizer
//
//  Created by Marcos Fellipe Costa Silva on 21/01/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
}

struct AlertContext {
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text("The data received from the server was invalid. "),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid response from the server. Please, try again later or contact support."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("The was an issue connecting to the server. If persists, please, contact support."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidConnection = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to complete your request at this time. Please, check your internet connection"),
        dismissButton: .default(Text("OK"))
    )
}
