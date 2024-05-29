//
//  APError.swift
//  FoodOrderApp
//
//  Created by Abdul Hassan on 5/28/24.
//

import Foundation

enum APError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
    case unableToComplete
}

var defaultError = APError.unableToComplete

switch defaultError {
case .invalidUrl:
    print("Error: Invalid Url")
case .invalidResponse:
    print("Error: Invalid Response. Check response status")
case .invalidData:
    print("Error: Invalid data")
case .unableToComplete:
    print("Error: Unable to complete network call")
}
