//
//  SafetyStatusDetailComponentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import SwiftUI

struct SafetyStatusDetailComponentView: View {
    
    var status: Status
    var dataType: String
    
    var body: some View {
        
        VStack (alignment: .center, spacing: 10) {
            Text(dataType)
                .font(.footnote)
                .bold()
            VStack {
                switch dataType {
                case "UVI":
                    ForEach(status.UVInformation, id: \.self) { info in
                        Text(info)
                            .frame(width: 100)
                    }
                case "AQI":
                    ForEach(status.AQIInformation, id: \.self) { info in
                        Text(info)
                            .frame(width: 100)
                    }
                case "Weather":
                    ForEach(status.weatherInformation, id: \.self) { info in
                        Text(info)
                            .frame(width: 100)
                    }
                default:
                    Text("Information not available")
                }
            }
            .font(.caption2)
            Spacer()
        }
        .frame(width: 100, height: 90)
        .padding(.top)
        .background(
            Color.grayTertiary
        )
        .cornerRadius(20)
    }
}

struct SafetyStatusDetailComponentView_Previews: PreviewProvider {
    static var previews: some View {
        let status = StatusSafe()
        let dataType = "UVI"
        return SafetyStatusDetailComponentView(status: status, dataType: dataType)
    }
}
