//
//  iPodButtonsView.swift
//  iPod-View
//
//  Created by Muhamad Talebi on 6/2/23.
//

import UIKit

class iPodButtonsView: UIView {
    
    private lazy var menuButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        return button
    }()
    
    private lazy var menuImageView: UIImageView = {
        let image = UIImage(named: "menu")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var forwardButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.contentMode = .scaleAspectFit
        return button
    }()
    
    private lazy var forwardImageView: UIImageView = {
        let image = UIImage(named: "forward")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 100
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var playPauseButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.contentMode = .scaleAspectFit
        return button
    }()
    
    private lazy var playPauseImageView: UIImageView = {
        let image = UIImage(named: "playpause")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var backwardButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        return button
    }()
    
    private lazy var backwardImageView: UIImageView = {
        let image = UIImage(named: "backward")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var horizontalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 100
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var selectButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentMode = .scaleAspectFit
        button.backgroundColor = .darkGray
        return button
    }()
    
    private lazy var selectImageView: UIImageView = {
        let image = UIImage(named: "background")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addingSubViewsToParentView()
        
        addSubview(selectButton)
        
        
        addArrangedSubViews()
        
        addImagesToButtonView()
        
        setConstraints()
        
        backgroundColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        selectButton.layer.cornerRadius = 50
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension iPodButtonsView {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            menuButton.widthAnchor.constraint(equalToConstant: 100),
            menuButton.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            forwardButton.widthAnchor.constraint(equalToConstant: 100),
            forwardButton.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            backwardButton.widthAnchor.constraint(equalToConstant: 100),
            backwardButton.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            playPauseButton.widthAnchor.constraint(equalToConstant: 100),
            playPauseButton.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            selectButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            selectButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            selectButton.widthAnchor.constraint(equalToConstant: 100),
            selectButton.heightAnchor.constraint(equalToConstant: 100),
        ])
        
//        NSLayoutConstraint.activate([
//            selectImageView.centerXAnchor.constraint(equalTo: selectButton.centerXAnchor),
//            selectImageView.centerYAnchor.constraint(equalTo: selectButton.centerYAnchor),
//            selectImageView.widthAnchor.constraint(equalToConstant: 100),
//            selectImageView.heightAnchor.constraint(equalToConstant: 100),
//        ])
        
        NSLayoutConstraint.activate([
            menuImageView.widthAnchor.constraint(equalToConstant: 52),
            menuImageView.heightAnchor.constraint(equalToConstant: 16),
            menuImageView.centerXAnchor.constraint(equalTo: menuButton.centerXAnchor),
            menuImageView.centerYAnchor.constraint(equalTo: menuButton.centerYAnchor, constant: -16),
        ])
        
        NSLayoutConstraint.activate([
            forwardImageView.widthAnchor.constraint(equalToConstant: 30),
            forwardImageView.heightAnchor.constraint(equalToConstant: 15),
            forwardImageView.centerXAnchor.constraint(equalTo: forwardButton.centerXAnchor, constant: 15),
            forwardImageView.centerYAnchor.constraint(equalTo: forwardButton.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            backwardImageView.widthAnchor.constraint(equalToConstant: 30),
            backwardImageView.heightAnchor.constraint(equalToConstant: 15),
            backwardImageView.centerXAnchor.constraint(equalTo: backwardButton.centerXAnchor, constant: -15),
            backwardImageView.centerYAnchor.constraint(equalTo: backwardButton.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            playPauseImageView.widthAnchor.constraint(equalToConstant: 30),
            playPauseImageView.heightAnchor.constraint(equalToConstant: 15),
            playPauseImageView.centerXAnchor.constraint(equalTo: playPauseButton.centerXAnchor),
            playPauseImageView.centerYAnchor.constraint(equalTo: playPauseButton.centerYAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            verticalStackView.widthAnchor.constraint(equalToConstant: 100),
            verticalStackView.heightAnchor.constraint(equalToConstant: 300),
            verticalStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            verticalStackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            horizontalStackView.widthAnchor.constraint(equalToConstant: 300),
            horizontalStackView.heightAnchor.constraint(equalToConstant: 100),
            horizontalStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            horizontalStackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
    }
    
    private func addArrangedSubViews() {
        
        horizontalStackView.addArrangedSubview(backwardButton)
        horizontalStackView.addArrangedSubview(forwardButton)
        
        verticalStackView.addArrangedSubview(menuButton)
        verticalStackView.addArrangedSubview(playPauseButton)
    }
    
    private func addingSubViewsToParentView() {
        
        
        addSubview(horizontalStackView)
        addSubview(verticalStackView)
        
    }
    
    private func addImagesToButtonView() {
        
        menuButton.addSubview(menuImageView)
        playPauseButton.addSubview(playPauseImageView)
        forwardButton.addSubview(forwardImageView)
        backwardButton.addSubview(backwardImageView)
    }
}
