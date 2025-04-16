//
//  HomeNavigationStackView.swift
//  Tinder
//
//  Created by Vitor Henrique Barreiro Marinho on 15/04/25.
//

import UIKit

class HomeNavigationStackView: UIStackView {
    let settingsButton = UIButton()
    let messageButton = UIButton()
    let tinderIcon = UIImageView(image: .appIcon)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    private func setupView() {
        [ settingsButton,
          UIView(),
          tinderIcon,
          UIView(),
          messageButton
        ].forEach { view in
            addArrangedSubview(view)
        }
        
        distribution = .equalCentering
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
        
        settingsButton.setImage(.topLeftProfile.withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(.topMessagesIcon.withRenderingMode(.alwaysOriginal), for: .normal)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
