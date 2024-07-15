//
//  AQIModalityView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import SwiftUI

struct AQIModalityView: View {
    @StateObject var aqiInfo = AQIInformation(id: 0, range: "", level: "", information: "")
    
    var body: some View {
        ScrollView {
            
            VStack {
                HStack {
                    Text("What is Air Quality Index?")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
            }
            
            AQIInformationCardComponentView()
                .padding(.bottom)
            
            HStack {
                Text("AQI Level")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            
            ForEach(aqiInfo.getAQIInformation(), id: \.range) { info in
                AQILevelCardComponentView(aqiInfo: info)
            }
        }
        .ignoresSafeArea()
        .padding(20)
    }
}

#Preview {
    AQIModalityView()
}