//
//  CardView.swift
//  Tinder
//
//  Created by Vitor Henrique Barreiro Marinho on 18/04/25.
//

import UIKit

class CardView: UIView {
    private let gradientLayer = CAGradientLayer()
    
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = .kelly2
        return iv
    }()
    
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var infoButton: UIButton = {
        let button = UIButton()
        button.setImage(.infoIcon.withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        addSubViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        gradientLayer.frame = frame
    }
    
    private func setupView() {
        layer.cornerRadius = 10
        clipsToBounds = true
        
        imageView.fillSuperview()
        
        infoLabel.attributedText = createAttributedText()
        
        setupGradiendLayer()
    }
    
    private func setupConstraints() {
        infoLabel.anchor(left: leftAnchor,
                         bottom: bottomAnchor,
                         right: rightAnchor,
                         paddingLeft: 16,
                         paddingBottom: 16,
                         paddingRight: 16)
        
        infoButton.setDimensions(height: 40, width: 40)
        infoButton.centerY(inView: infoLabel)
        infoButton.anchor(right: rightAnchor, paddingRight: 16)
    }
    
    private func addSubViews() {
        setupGradiendLayer()
        addSubview(imageView)
        addSubview(infoLabel)
        addSubview(infoButton)
    }
    
    private func createAttributedText() -> NSMutableAttributedString {
        
        let attributedText = NSMutableAttributedString(string: "Jone Doe", attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy), .foregroundColor: UIColor.white])
        
        attributedText.append(NSAttributedString(string: "  20", attributes:  [.font: UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.white]))
        
        return attributedText
    }
    
    private func setupGradiendLayer() {
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.locations = [0.5, 1.1]
        layer.addSublayer(gradientLayer)
    }
}
