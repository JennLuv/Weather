//
//  AQIInformationCardComponentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import SwiftUI

struct InformationCardComponentView: View {
    @StateObject var aqiInfo = AQIInformation(id: 0, range: "", level: "", information: "")
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text(aqiInfo.generalInformation)
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
    InformationCardComponentView()
}
