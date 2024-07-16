//
//  SafetyStatusCardView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import SwiftUI

struct SafetyStatusCardComponentView: View {
    
    var dataType: String = ""
    var status: Status
    
    var body: some View {
        ZStack {
            HStack(alignment: .top) {
                
                VStack(alignment: .leading, spacing: 20) {
                    HStack (alignment: .top) {
                        Text(status.status)
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Spacer()
                        Circle()
                            .frame(width: 20)
                            .foregroundColor(status.circleColor)
                            .shadow(radius: 2)
                        
                    }
                    Text(status.information)
                        .foregroundColor(.arsenic)
                        .font(.caption)
                    
                    HStack {
                        
                        SafetyStatusDetailComponentView(status: status, dataType: "UVI")
                        Spacer()
                        
                        SafetyStatusDetailComponentView(status: status, dataType: "AQI")
                        Spacer()
                        
                        SafetyStatusDetailComponentView(status: status, dataType: "Weather")
                        
                    }
                }
                .padding()
            }
        }
        .frame(width: .infinity)
        .background(Color.grayQuaternary)
        .cornerRadius(20)
    }
}
          
//#Preview {
//    SafetyStatusCardComponentView()
//}
