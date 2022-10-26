//
//  Color + Extension.swift
//  UberSwiftUI
//
//  Created by Андрей Русин on 26.10.2022.
//

import Foundation
import SwiftUI  

struct ColorTheme {
    let backGroundColor = Color("BackgroundColor")
    let secondaryBackgroundColor = Color("SecondaryBackgroundColor")
    let PrimaryTextColor = Color("PrimaryTextColor")
}

extension Color {
    static let theme = ColorTheme()
    
}
