//
//  AQIInformationCardComponentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import SwiftUI

struct AQIInformationCardComponentView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("The Air Quality Index (AQI) is a scale used to measure and report air quality levels. It indicates how clean or polluted the air is and what associated health effects might be a concern for the public. Higher AQI values represent higher levels of air pollution and greater health risks.")
                        .font(.subheadline)
                    Spacer()
                }
            }
            .padding()
        }
        .frame(width: .infinity)
        .background(
            Color.grayTertiary
        )
        .cornerRadius(20)
    }
}

#Preview {
    AQIInformationCardComponentView()
}
