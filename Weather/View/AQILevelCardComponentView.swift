//
//  UVILevelCardComponentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import SwiftUI

struct AQILevelCardComponentView: View {
    
    var aqiInfo: AQIInformation
    
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    Text("AQ Index: \(aqiInfo.range)")
                    Spacer()
                    Text("Level: \(aqiInfo.level)")
                }
                .font(.subheadline)
                .bold()
                HStack {
                    Text(aqiInfo.information)
                        .font(.caption2)
                    Spacer()
                }
                .padding(.top, 5)
            }
            .padding()
        }
        .frame(width: .infinity)
        .background(
            Color.grayQuaternary
        )
        .cornerRadius(20)
    }
}

//#Preview {
//    AQILevelCardComponentView()
//}
