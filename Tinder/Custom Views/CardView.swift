//
//  CardView.swift
//  Tinder
//
//  Created by Vitor Henrique Barreiro Marinho on 18/04/25.
//

import UIKit

class CardView: UIView {
    
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = .kelly2
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        addSubViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        layer.cornerRadius = 10
        clipsToBounds = true
        
        imageView.fillSuperview()
    }
    
    private func addSubViews() {
        addSubview(imageView)
    }
}
