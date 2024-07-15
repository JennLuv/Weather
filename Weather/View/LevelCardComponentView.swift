//
//  UVILevelCardComponentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import SwiftUI

struct LevelCardComponentView: View {
    
    var aqiInfo: AQIInformation
    
    var body: some View {
        ZStack {
            HStack(alignment: .top) {

                VStack(alignment: .leading, spacing: 20) {
                    HStack (alignment: .top) {
                        Text("AQ Index: \(aqiInfo.range)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Spacer()
                        Text("Level: \(aqiInfo.level)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            
                    }
                    Text(aqiInfo.information)
                        .foregroundColor(.primary)
                        .font(.caption2)
                }
                .frame(width: .infinity)
                
                Spacer()
                
            }
            .padding()
            .background(Color.grayQuaternary)
            .cornerRadius(20)
            
            
            
        }
    }
                                
}
                            


//#Preview {
//    AQILevelCardComponentView()
//}
