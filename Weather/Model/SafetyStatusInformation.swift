//
//  SafetyStatusInformation.swift
//  Weather
//
//  Created by Jennifer Luvindi on 15/07/24.
//

import Foundation

struct SafetyStatusInformation {
    
    var generalInformation: String = "Safety Status is a system designed to inform individuals about the safety of outdoor conditions based on factors such as weather, UV index, and air quality. It helps people determine the level of precaution needed to stay safe and healthy when going outside."
    
    var safetyInformationType: Status
    
    init(generalInformation: String, safetyInformationType: Status) {
        self.generalInformation = generalInformation
        self.safetyInformationType = safetyInformationType
    }
    
    
}


