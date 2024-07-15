//
//  AQI.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import SwiftUI

class AQIInformation: ObservableObject {
    var id: Int
    var range: String
    var level: String
    var information: String
    
    init(id: Int, range: String, level: String, information: String) {
        self.id = id
        self.range = range
        self.level = level
        self.information = information
    }
    
    func getAQIInformation() -> [AQIInformation] {
        [AQIInformation(id: 0, range: "0-50", level: "Good", information: "Enjoy the outdoors! Air quality is excellent for all activities."),
         AQIInformation(id: 1, range: "51-100", level: "Moderate", information: "Air quality is acceptable. However, there may be risk for unusually sensitive people. Consider making outdoor activities shorter if you’re unusually sensitive to particle pollution."),
         AQIInformation(id: 2, range: "101-150", level: "Sensitive", information: "Sensitive groups (children, elderly, and those with respiratory issues) should reduce outdoor activities. Everyone else can enjoy but wear a mask if exerting themselves."),
         AQIInformation(id: 3, range: "151-200", level: "Unhealthy", information: "Limit outdoor activities. Everyone should consider wearing masks to reduce exposure."),
         ]
    }
}
