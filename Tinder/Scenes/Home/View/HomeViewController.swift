//
//  ViewController.swift
//  Tinder
//
//  Created by Vitor Henrique Barreiro Marinho on 15/04/25.
//

import UIKit

class HomeViewController: MainViewController, HomeViewProtocol {
    private var presenter: HomePresenter?
    private var mainStackView = UIStackView()
    private let topNavigationStack = HomeNavigationStackView()
    private let bottomStack = BottomControlsStackView()
    
    private let deckView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 5
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupView() {
        view.backgroundColor = .white
        setupMainStackView()
        addSubViews()
        setupConstraints()
        setupPresenter()
        getCards()
    }
    
    override func addSubViews() {
        view.addSubview(mainStackView)
    }
    
    override func setupConstraints() {
        
        mainStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                             left: view.leftAnchor,
                             bottom: view.safeAreaLayoutGuide.bottomAnchor,
                             right: view.rightAnchor)
    }
    
    private func setupMainStackView() {
        mainStackView = UIStackView(arrangedSubviews: [topNavigationStack, deckView, bottomStack])
        mainStackView.axis = .vertical
        mainStackView.isLayoutMarginsRelativeArrangement = true
        mainStackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
        mainStackView.bringSubviewToFront(deckView)
    }
    
    private func getCards() {
        presenter?.getCards()
    }
    
    func show(cards: [CardView]) {
        
        cards.forEach { card in
            DispatchQueue.main.async {
                self.deckView.addSubview(card)
                card.fillSuperview()
            }
        }
    }
    
    private func setupPresenter() {
        self.presenter = HomePresenter(controller: self)
    }
}

