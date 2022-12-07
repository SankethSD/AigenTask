//
//  UIImage+Extensions.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/5/22.
//

import Foundation
import UIKit

enum AssetImageIcons {
    
    case addCar
    case searchCar
    case callCar
    case home
    case myAds
    case bmwLogo
    case ferrariLogo
    case fordLogo
    case hondaLogo
    case lamborghiniLogo
    case maseratiLogo
    case porscheLogo
    case teslaLogo
    
}

extension UIImage {
    static func appAssetIcon(_ name: AssetImageIcons) -> UIImage? {
        switch name {
        case .addCar: return UIImage(named: "addCar")
        case .searchCar: return UIImage(named: "searchCar")
        case .callCar: return UIImage(named: "callCar")
        case .home: return UIImage(named: "homeIcon")
        case .myAds: return UIImage(named: "myAdsIcon")
        case .bmwLogo: return UIImage(named: "bmwLogo")
        case .ferrariLogo: return UIImage(named: "ferrariLogo")
        case .fordLogo: return UIImage(named: "fordLogo")
        case .hondaLogo: return UIImage(named: "hondaLogo")
        case .lamborghiniLogo: return UIImage(named: "lamborghiniLogo")
        case .maseratiLogo: return UIImage(named: "maseratiLogo")
        case .porscheLogo: return UIImage(named: "porscheLogo")
        case .teslaLogo: return UIImage(named: "teslaLogo")
        
        }
    }
}
