//
//  Colors.swift
//  tic-tac-toe-app
//
//  Created by Ian Baikuchukov on 10/12/23.
//

import SwiftUI

typealias ColorValue = UInt32

enum DarkColors: ColorValue {
    case backgroundDark = 0x0C1017
}

protocol DarkColorSupportance {
    var darkColor: DarkColors { get }
}

protocol AppColorsProtocol {
    static func getColor(_ color: AppColors) -> Color
}

enum AppColors: ColorValue, AppColorsProtocol, DarkColorSupportance {
    case backgroundColor = 0xFFFFFF
    
    var darkColor: DarkColors {
        switch self {
        case .backgroundColor:
            return .backgroundDark
        }
    }
    
    static func getColor(_ color: AppColors) -> Color {
        var isDarkTheme = Bool.random()
        
        if isDarkTheme {
            return Color(hex: color.darkColor.rawValue)
        } else {
            return Color(hex: color.rawValue)
        }
    }
    
}
