//
//  SafetyStatusModalityView.swift
//  Weather
//
//  Created by Jennifer Luvindi on 16/07/24.
//

import SwiftUI

struct SafetyStatusModalityView: View {

    var body: some View {
        ScrollView {
            
            VStack {
                HStack {
                    Text("What is Safety Status?")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
            }
            
            InformationCardComponentView(Info: "Safety Status is a system designed to inform individuals about the safety of outdoor conditions based on factors such as weather, UV index, and air quality. It helps people determine the level of precaution needed to stay safe and healthy when going outside.")
                .padding(.bottom)
            
            HStack {
                Text("Safety Status")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            
            SafetyStatusCardComponentView( status: StatusSafe())
            SafetyStatusCardComponentView( status: StatusCaution())
            SafetyStatusCardComponentView( status: StatusUnsafe())
        }
        .ignoresSafeArea()
        .padding()
    }
}


#Preview {
    SafetyStatusModalityView()
}
