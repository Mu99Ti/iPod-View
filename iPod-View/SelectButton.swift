//
//  SelectButton.swift
//  iPod-View
//
//  Created by Muhamad Talebi on 6/2/23.
//

import UIKit

class SelectButton: UIButton {
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(red: 78/255, green: 76/255, blue: 80/255, alpha: 1)
        layer.cornerRadius = frame.height/2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
