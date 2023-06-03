//
//  ViewController.swift
//  iPod-View
//
//  Created by Muhamad Talebi on 6/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var backgroundImageView = UIImageView(image: UIImage(named: "background"))
    
    private lazy var button = iPodButtonsView()
    
    private lazy var ipod = iPodView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewControllerBackground()
        
        view.addSubview(ipod)
        
        ipod.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            ipod.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ipod.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

extension ViewController {
    private func setViewControllerBackground() {
        
        view.addSubview(backgroundImageView)
        
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}
