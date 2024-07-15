//
//  Weather.swift
//  Weather
//
//  Created by Jennifer Luvindi on 14/07/24.
//

import Foundation
import SwiftUI

class Weather: Identifiable {
    var id: Int
    var location: String
    var city: String
    var type: weatherType
    var time: String
    var UVI: Int
    var AQI: Int
    var status: Status
    
    init(id: Int, location: String, city: String, type: weatherType, time: String, UVI: Int, AQI: Int, status: Status) {
        self.id = id
        self.location = location
        self.city = city
        self.type = type
        self.time = time
        self.UVI = UVI
        self.AQI = AQI
        self.status = status
    }
    
}

enum weatherType{
    case cloudyLight
    case cloudyNightLight
    case nightLight
    case sunnyLight
    case rainLight
    case rainThunderLight
}
