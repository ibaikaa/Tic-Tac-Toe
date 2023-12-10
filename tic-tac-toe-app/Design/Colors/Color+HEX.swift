//
//  Color+HEX.swift
//  tic-tac-toe-app
//
//  Created by Ian Baikuchukov on 10/12/23.
//

import SwiftUI

extension Color {
    init(hex: UInt32, opacity: CGFloat = 1.0) {
        if #available(iOS 15.0, *) {
            self.init(
                uiColor: .init(
                    red: CGFloat(0xFF & (hex >> 0x10)) / 0xFF,
                    green: CGFloat(0xFF & (hex >> 0x08)) / 0xFF,
                    blue: CGFloat(0xFF & (hex >> 0x00)) / 0xFF,
                    alpha: opacity
                )
            )
        } else {
            self.init(
                UIColor(
                    red: CGFloat(0xFF & (hex >> 0x10)) / 0xFF,
                    green: CGFloat(0xFF & (hex >> 0x08)) / 0xFF,
                    blue: CGFloat(0xFF & (hex >> 0x00)) / 0xFF,
                    alpha: opacity
                ).cgColor
            )
        }
    }
}
