//
//  WeatherCardComponentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 14/07/24.
//

import SwiftUI

struct WeatherCardComponentView: View {
    @ObservedObject var viewModel: WeatherCardComponentViewModel
    
    var body: some View {
        ZStack{
            HStack {
                VStack{
                    HStack {
                        Text(viewModel.location)
                            .font(.title3)
                        .bold()
                        Spacer()
                    }
                    
                    HStack {
                        Text(viewModel.city)
                            .font(.footnote)
                            .foregroundStyle(.arsenic)
                            .opacity(0.8)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    HStack{
                        Text(viewModel.time)
                        Text("UVI: \(viewModel.UVI)")
                        Text("AQI: \(viewModel.AQI)")
                        Spacer()
                    }
                    .font(.caption)
                }
                .frame(width: 170, height: 83)
                .padding(.leading)

                Spacer()
                
                VStack {
                    switch viewModel.weather.type {
                    case .rainThunderLight:
                        Image(viewModel.image)
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: 3)
                    default:
                        Image(systemName: viewModel.image)
                            .symbolRenderingMode(viewModel.renderingMode)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(viewModel.symbolColor[0],viewModel.symbolColor[1])
                            .shadow(radius: 3)
                    }
                    
                    ZStack {
                        Text(viewModel.status)
                            .font(.caption)
                            .foregroundStyle(viewModel.textColour)
                            .frame(width: 44, height: 16)
                            .padding()
                    }
                    .background(viewModel.statusColour)
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
            LinearGradient(gradient: Gradient(colors: viewModel.gradient), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}
