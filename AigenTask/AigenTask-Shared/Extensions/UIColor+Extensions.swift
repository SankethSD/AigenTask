//
//  UIColor+Extensions.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/5/22.
//

import UIKit

enum AssetColors {
    
    case themeOrange
    
}
extension UIColor {
    static func appColor(_ name: AssetColors) -> UIColor? {
        switch name {
        case .themeOrange: return UIColor(named: "themeOrange")
        
        }
    }
}
