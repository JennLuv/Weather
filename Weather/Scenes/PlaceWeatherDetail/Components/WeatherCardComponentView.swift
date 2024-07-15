//
//  WeatherCardComponentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 14/07/24.
//

import SwiftUI

struct WeatherCardComponentView: View {
    var weather: AppWeather
    
    var body: some View {
        
        ZStack{
            HStack {
                VStack{
                    HStack {
                        Text(weather.location)
                            .font(.title3)
                        .bold()
                        Spacer()
                    }
                    
                    HStack {
                        Text(weather.city)
                            .font(.footnote)
                            .foregroundStyle(.arsenic)
                            .opacity(0.8)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    HStack{
                        Text(weather.time)
                        Text("UVI: \(weather.UVI)")
                        Text("AQI: \(weather.AQI)")
                        Spacer()
                    }
                    .font(.caption)
                }
                .frame(width: 170, height: 83)
                .padding(.leading)

                Spacer()
                
                VStack {
                    switch weather.type {
                    case "rainThunderLight":
                        Image(weather.image)
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: 3)
                    default:
                        Image(systemName: weather.image)
                            .symbolRenderingMode(weather.renderingMode)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(weather.symbolColor[0],weather.symbolColor[1])
                            .shadow(radius: 3)
                    }
                    
                    ZStack {
                        Text(weather.status.status)
                            .font(.caption)
                            .foregroundStyle(weather.status.textColor)
                            .frame(width: 44, height: 16)
                            .padding()
                    }
                    .background(weather.status.statusColor)
                    .frame(width: 58, height: 16)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                        
                }
                .frame(width: 88, height: 83)
                .padding(.trailing, 15)
            }
        }
        .frame(width: 361, height: 115)
        .background(
            LinearGradient(gradient: Gradient(colors: weather.gradient), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}
