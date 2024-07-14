//
//  ContentViewModel.swift
//  Weather
//
//  Created by Jennifer Luvindi on 14/07/24.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    var weatherData: [Weather] = [
        Weather(id: 0, location: "Green Office Park", city: "Cisauk, Tangerang", type: .cloudyLight, time: "09.15", UVI: 2, AQI: 20, status: .safe),
        Weather(id: 1, location: "Green Office Park", city: "Cisauk, Tangerang", type: .sunnyLight, time: "09.15", UVI: 2, AQI: 20, status: .safe),
        Weather(id: 2, location: "Green Office Park", city: "Cisauk, Tangerang", type: .cloudyNightLight, time: "09.15", UVI: 2, AQI: 20, status: .safe),
        Weather(id: 3, location: "Green Office Park", city: "Cisauk, Tangerang", type: .nightLight, time: "09.15", UVI: 2, AQI: 20, status: .caution),
        Weather(id: 4, location: "Green Office Park", city: "Cisauk, Tangerang", type: .rainLight, time: "09.15", UVI: 2, AQI: 20, status: .caution),
        Weather(id: 5, location: "Green Office Park", city: "Cisauk, Tangerang", type: .rainThunderLight, time: "09.15", UVI: 2, AQI: 20, status: .unsafe)
        ]
}
