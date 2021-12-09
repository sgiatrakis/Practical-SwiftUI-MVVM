//
//  ColorExtension.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import SwiftUI

extension Color {
    
    // UI Color Load
    static let ui = Color.UI()
    
    // UI Colors
    struct UI {
        let primaryOcean = Color("primaryOcean")
        let primaryGreen = Color("primaryGreen")
    }
    
    // Custom RGB Colors
    static let defaultTextColor = Color(red: 40 / 255 , green: 40 / 255, blue: 40 / 255)
    static let lightGreyTextColor = Color(red: 50 / 255 , green: 50 / 255, blue: 50 / 255)
        
}
