//
//  iPodView.swift
//  iPod-View
//
//  Created by Muhamad Talebi on 6/3/23.
//

import UIKit

class iPodView: UIView {
    
    private lazy var ipodScreenView = iPodScreenView()
    
    private lazy var ipodButtonsView = iPodButtonsView()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillProportionally
        stackView.spacing = 65
        return stackView
    }()
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(ipodScreenView)
        mainStackView.addArrangedSubview(ipodButtonsView)
        
        ipodButtonsView.translatesAutoresizingMaskIntoConstraints = false
        ipodScreenView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
        
        NSLayoutConstraint.activate([
            ipodButtonsView.widthAnchor.constraint(equalToConstant: 300),
            ipodButtonsView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            ipodScreenView.widthAnchor.constraint(equalToConstant: 358),
            ipodScreenView.heightAnchor.constraint(equalToConstant: 358),
        ])
        
        ipodButtonsView.layer.cornerRadius = 150
        ipodScreenView.layer.cornerRadius = 8
        
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
