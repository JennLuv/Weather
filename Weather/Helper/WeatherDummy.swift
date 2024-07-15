//
//  WeatherDummy.swift
//  Weather
//
//  Created by Jennifer Luvindi on 16/07/24.
//

import Foundation

struct WeatherDummy {
    var weatherDummyData: [AppWeather] = [
        CloudyLight(id: 0, location: "Green Office Park", city: "Cisauk, Tangerang", time: "09.15", UVI: 2, AQI: 20, status: StatusSafe()),
        CloudyNightLight(id: 1, location: "Green Office Park", city: "Cisauk, Tangerang", time: "09.15", UVI: 2, AQI: 20, status: StatusSafe()),
        NightLight(id: 2, location: "Green Office Park", city: "Cisauk, Tangerang", time: "09.15", UVI: 2, AQI: 20, status: StatusUnsafe()),
        SunnyLight(id: 3, location: "Green Office Park", city: "Cisauk, Tangerang", time: "09.15", UVI: 2, AQI: 20, status: StatusUnsafe()),
        RainLight(id: 4, location: "Green Office Park", city: "Cisauk, Tangerang", time: "09.15", UVI: 2, AQI: 20, status: StatusCaution()),
        RainThunderLight(id: 5, location: "Green Office Park", city: "Cisauk, Tangerang", time: "09.15", UVI: 2, AQI: 20, status: StatusCaution()),
    ]
}
