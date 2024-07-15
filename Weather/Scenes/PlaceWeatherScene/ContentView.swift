//
//  ContentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 14/07/24.
//

import SwiftUI

struct ContentView: View {
    
    var weatherDummy = WeatherDummy()
    
    var body: some View {
        ForEach(weatherDummy.weatherDummyData) { weather in
            WeatherCardComponentView(weather: weather)
        }
    }
}

#Preview {
    ContentView()
}
