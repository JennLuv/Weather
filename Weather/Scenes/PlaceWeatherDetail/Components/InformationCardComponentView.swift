//
//  AQIInformationCardComponentView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import SwiftUI

struct InformationCardComponentView: View {
    var Info = ""
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text(Info)
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
