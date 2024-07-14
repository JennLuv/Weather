//
//  ContentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 14/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        ForEach(viewModel.weatherData) { weather in
            let viewModel = WeatherCardComponentViewModel(weather: weather)
            WeatherCardComponentView(viewModel: viewModel)
        }
    }
}

#Preview {
    ContentView()
}
