//
//  HomePresenter.swift
//  Tinder
//
//  Created by Vitor Henrique Barreiro Marinho on 22/04/25.
//

import Foundation

class HomePresenter: HomePresenterProtocol {
    private var controller: HomeViewProtocol
    
    init(controller: HomeViewProtocol) {
        self.controller = controller
    }
    
    func getCards() {
        var cardsList:[CardView] = []
        
        let firstUser = User(name: "Jane Doe", age: 22, images: [.jane1, .jane2])
        let secondUser = User(name: "Megan", age: 22, images: [.kelly1, .kelly2])
        
        let firstCardView = CardView(data: CardViewData(user: firstUser))
        let secondCardView = CardView(data: CardViewData(user: secondUser))
        
        cardsList.append(firstCardView)
        cardsList.append(secondCardView)
        
        self.controller.show(cards: cardsList)
    }
}
