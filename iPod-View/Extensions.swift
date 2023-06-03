//
//  Extensions.swift
//  iPod-View
//
//  Created by Muhamad Talebi on 6/2/23.
//

import UIKit

extension UIColor {
    
    static func randomColor() -> UIColor {
        
        let randomColorNumber: CGFloat = CGFloat.random(in: 0...255)/255
        let randomAlphaNumber: CGFloat = CGFloat.random(in: 0...1)
        
        return UIColor(red: randomColorNumber, green: randomColorNumber, blue: randomColorNumber, alpha: randomAlphaNumber)
    }
    
}
