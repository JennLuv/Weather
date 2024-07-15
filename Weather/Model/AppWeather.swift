//
//  Weather.swift
//  Weather
//
//  Created by Jennifer Luvindi on 14/07/24.
//

import Foundation
import SwiftUI

class AppWeather: Identifiable {
    var id: Int
    var type: String
    var location: String
    var city: String
    var time: String
    var UVI: Int
    var AQI: Int
    var image: String
    var renderingMode: SymbolRenderingMode
    var symbolColor: [Color]
    var gradient: [Color]
    var status: Status
    
    init(id: Int, type: String, location: String, city: String, time: String, UVI: Int, AQI: Int, image: String, renderingMode: SymbolRenderingMode, symbolColor: [Color], gradient: [Color], status: Status) {
        self.id = id
        self.type = type
        self.location = location
        self.city = city
        self.time = time
        self.UVI = UVI
        self.AQI = AQI
        self.image = image
        self.renderingMode = renderingMode
        self.symbolColor = symbolColor
        self.gradient = gradient
        self.status = status
    }
}
class CloudyLight: AppWeather {
    init(id: Int, location: String, city: String, time: String, UVI: Int, AQI: Int, status: Status) {
        super.init(id: id, type: "cloudyLight", location: location, city: city, time: time, UVI: UVI, AQI: AQI, image: "cloud.sun.fill", renderingMode: .multicolor, symbolColor: [.primary, .primary], gradient: [.brightGray, .darkSkyBlue], status: status)
    }
}

class CloudyNightLight: AppWeather {
    init(id: Int, location: String, city: String, time: String, UVI: Int, AQI: Int, status: Status) {
        super.init(id: id, type: "cloudyNightLight", location: location, city: city, time: time, UVI: UVI, AQI: AQI, image: "cloud.moon.fill", renderingMode: .hierarchical, symbolColor: [.white, .white], gradient: [.blueberry, .vistaBlue], status: status)
    }
}

class NightLight: AppWeather {
    init(id: Int, location: String, city: String, time: String, UVI: Int, AQI: Int, status: Status) {
        super.init(id: id, type: "nightLight", location: location, city: city, time: time, UVI: UVI, AQI: AQI, image: "moon.stars.fill", renderingMode: .multicolor, symbolColor: [.primary, .primary], gradient: [.blueberry, .unitedNationsBlue], status: status)
    }
}

class SunnyLight: AppWeather {
    init(id: Int, location: String, city: String, time: String, UVI: Int, AQI: Int, status: Status) {
        super.init(id: id, type: "sunnyLight", location: location, city: city, time: time, UVI: UVI, AQI: AQI, image: "sun.max.fill", renderingMode: .multicolor, symbolColor: [.primary, .primary], gradient: [.cream, .skyBlue], status: status)
    }
}

class RainLight: AppWeather {
    init(id: Int, location: String, city: String, time: String, UVI: Int, AQI: Int, status: Status) {
        super.init(id: id, type: "rainLight", location: location, city: city, time: time, UVI: UVI, AQI: AQI, image: "cloud.rain.fill", renderingMode: .palette, symbolColor: [.white, .mayaBlue], gradient: [.lighterGray, .philippineGray], status: status)
    }
}

class RainThunderLight: AppWeather {
    init(id: Int, location: String, city: String, time: String, UVI: Int, AQI: Int, status: Status) {
        super.init(id: id, type: "rainThunderLight", location: location, city: city, time: time, UVI: UVI, AQI: AQI, image: "cloudThunder", renderingMode: .multicolor, symbolColor: [.primary, .primary], gradient: [.lighterGray, .philippineGray], status: status)
    }
}
