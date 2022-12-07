//
//  CustomViews.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/5/22.
//

import UIKit


//UIView
class RoundedviewWithBorder: UIView {
    
    @IBInspectable  var viewCornerRadius: CGFloat = 5 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var viewBorderColor: UIColor = UIColor.black.withAlphaComponent(0.4) {
        didSet {
            layoutSubviews()
        }
    }
    @IBInspectable var viewBorderWidth: CGFloat = 0.4 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var viewShadowRadius: CGFloat = 0.0 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var viewShadowOpacity: Float = 0.0 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var viewShadowOffSet: CGSize = .zero {
        didSet {
            layoutSubviews()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.borderColor = viewBorderColor.cgColor
        layer.borderWidth = viewBorderWidth
        layer.cornerRadius = viewCornerRadius
        layer.shadowRadius = viewShadowRadius
        layer.shadowOpacity = viewShadowOpacity
        layer.shadowOffset = viewShadowOffSet
    }
}



//UIButton
class RoundedButtonWithBorder: UIButton {
    
    @IBInspectable  var cornerRadius: CGFloat = 5 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black.withAlphaComponent(0.4) {
        didSet {
            layoutSubviews()
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0.4 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.0 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var shadowOffSet: CGSize = .zero {
        didSet {
            layoutSubviews()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cornerRadius
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = shadowOpacity
        layer.shadowOffset = shadowOffSet
    }
}
