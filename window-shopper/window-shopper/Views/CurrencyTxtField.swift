//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Sherbaz Hashmi on 24/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {
    
    // Don't ever implement this function empty.
    // Don't change corner radius in here.
    // Only do this when you want to add a subview into your view.
    // When working in draw rect, set clip to bounds to whatever needs to be clipped.
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor  = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 0.8)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
        
        currencyLabel.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView();
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView();
    }
    
    func customizeView () {
        
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string : p, attributes: [.foregroundColor : UIColor.white])
            // Overriding regular placeholder.
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
}
