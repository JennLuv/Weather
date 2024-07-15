//
//  WeatherCardComponentViewModel.swift
//  Weather
//
//  Created by Jennifer Luvindi on 14/07/24.
//

import SwiftUI

class WeatherCardComponentViewModel: ObservableObject{
    var weather: Weather
    
    init(weather: Weather) {
        self.weather = weather
    }
    
    var location: String {
        weather.location
    }
    
    var city: String {
        weather.city
    }
    
    var time: String {
        weather.time
    }
    
    var UVI: Int {
        weather.UVI
    }
    
    var AQI: Int {
        weather.AQI
    }
    
    var image: String {
        switch weather.type {
        case .cloudyLight: "cloud.sun.fill"
        case .cloudyNightLight: "cloud.moon.fill"
        case .nightLight: "moon.stars.fill"
        case .sunnyLight: "sun.max.fill"
        case .rainLight: "cloud.rain.fill"
        case .rainThunderLight: "cloudThunder"
        }
    }
    
    var renderingMode: SymbolRenderingMode {
        switch weather.type {
        case .cloudyLight, .nightLight, .sunnyLight, .rainThunderLight: .multicolor
        case .rainLight: .palette
        case .cloudyNightLight: .hierarchical
        }
    }
    
    var symbolColor: [Color] {
            switch weather.type {
            case .cloudyLight, .nightLight, .sunnyLight, .rainThunderLight:
                return [.primary, .primary]
            case .rainLight:
                return [.white, .mayaBlue]
            case .cloudyNightLight:
                return [.white, .white]
            }
        }
    
    var gradient: [Color] {
        switch weather.type {
        case .cloudyLight: [Color.brightGray, Color.darkSkyBlue]
        case .cloudyNightLight: [Color.blueberry, Color.vistaBlue]
        case .nightLight: [Color.blueberry, Color.unitedNationsBlue]
        case .sunnyLight: [Color.cream, Color.skyBlue]
        case .rainLight: [Color.lighterGray, Color.philippineGray]
        case .rainThunderLight: [Color.lighterGray, Color.philippineGray]
        }
    }
    
    var status: String {
        weather.status.rawValue
    }
    
    var statusColour: Color {
        switch weather.status {
        case .safe: Color.paleGreen
        case .unsafe: Color.mauvelous
        case .caution: Color.paleGoldenrod
        }
    }
    
    var textColour: Color {
        switch weather.status {
        case .safe: Color.paleGreenText
        case .unsafe: Color.mauvelousText
        case .caution: Color.paleGoldenrodText
        }
    }
    
}
