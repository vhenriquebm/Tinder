//
//  ViewController.swift
//  Tinder
//
//  Created by Vitor Henrique Barreiro Marinho on 15/04/25.
//

import UIKit

class HomeViewController: UIViewController {
    private let topNavigationStack = HomeNavigationStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(topNavigationStack)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        topNavigationStack.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                                  left: view.leftAnchor,
                                  right: view.rightAnchor)
    }
}

