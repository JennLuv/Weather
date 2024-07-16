//
//  Status.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import Foundation
import SwiftUI

class Status: Identifiable {
    
    var status: String
    var statusColor: Color
    var circleColor: Color
    var textColor: Color
    var UVInformation: [String]
    var AQIInformation: [String]
    var weatherInformation: [String]
    var information: String
    
    init(status: String, statusColor: Color, circleColor: Color, textColor: Color, UVInformation: [String], AQIInformation: [String], weatherInformation: [String], information: String) {
        self.status = status
        self.statusColor = statusColor
        self.circleColor = circleColor
        self.textColor = textColor
        self.UVInformation = UVInformation
        self.AQIInformation = AQIInformation
        self.weatherInformation = weatherInformation
        self.information = information
    }
    
}

class StatusSafe: Status {
    init() {
        super.init(status: "Safe", statusColor: Color.paleGreen, circleColor: Color.paleGreenCircle, textColor: Color.paleGreenText, UVInformation: ["Low"], AQIInformation: ["Low"], weatherInformation: ["Cloudy", "Partly Cloudy"], information: "Conditions are favorable with no significant risks.")
    }
}

class StatusUnsafe: Status {
    init() {
        super.init(status: "Unsafe", statusColor: Color.mauvelous, circleColor: Color.mauvelousCircle, textColor: Color.mauvelousText, UVInformation: ["Very High", "Extreme"], AQIInformation: ["Very Unhealthy", "Hazardous"], weatherInformation: ["Thunderstorm"], information: "Conditions are dangerous with high risks.")
    }
}

class StatusCaution: Status {
    init() {
        super.init(status: "Caution", statusColor: Color.paleGoldenrod, circleColor: Color.paleGoldenrodCircle, textColor: Color.paleGoldenrodText, UVInformation: ["Moderate", "High"], AQIInformation: ["Moderate", "Sensitive", "Unhealthy"], weatherInformation: ["Mostly Sunny", "Light Rain", "HeavyRain"], information: "Conditions require some precautions due to moderate risks.")
    }
}
