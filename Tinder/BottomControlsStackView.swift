//
//  ButtonControlsStackViews.swift
//  Tinder
//
//  Created by Vitor Henrique Barreiro Marinho on 17/04/25.
//

import UIKit

class BottomControlsStackView: UIStackView {
    let refreshButton = UIButton()
    let dislikeButton = UIButton()
    let superLikeButton = UIButton()
    let likeButton = UIButton()
    let boostButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    private func setupView() {
        [ refreshButton,
          dislikeButton,
          superLikeButton,
          likeButton,
          boostButton
        ].forEach { view in
            addArrangedSubview(view)
        }
        
        setupImages()
    }
    
    private func setupImages() {
        refreshButton.setImage(.refreshCircle.withRenderingMode(.alwaysOriginal), for: .normal)
        dislikeButton.setImage(.dismissCircle.withRenderingMode(.alwaysOriginal), for: .normal)
        superLikeButton.setImage(.superLikeCircle.withRenderingMode(.alwaysOriginal), for: .normal)
        likeButton.setImage(.likeCircle.withRenderingMode(.alwaysOriginal), for: .normal)
        boostButton.setImage(.boostCircle.withRenderingMode(.alwaysOriginal), for: .normal)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
