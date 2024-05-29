//
//  Appetizer.swift
//  FoodOrderApp
//
//  Created by Abdul Hassan on 5/28/24.
//

import Foundation

struct Appetizer: Decodable {
    let price: Double
    let id: Int
    let carbs: Int
    let calories: Int
    let description: String
    let imageURL: String
    let protein: Int
    let name: String
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(price: 9.99,
                                           id: 2,
                                           carbs: 50,
                                           calories: 200,
                                           description: "This is a description.",
                                           imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
                                           protein: 19,
                                           name: "Appetizer Name"
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer,]
}
