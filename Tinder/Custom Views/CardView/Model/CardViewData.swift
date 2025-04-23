//
//  CardViewData.swift
//  Tinder
//
//  Created by Vitor Henrique Barreiro Marinho on 22/04/25.
//

import UIKit

struct CardViewData {
    let user: User
    let infoText: NSAttributedString
    
    init(user: User) {
        self.user = user
        self.infoText = CardViewData.createAttributedText(for: user)
        
    }
}

extension CardViewData {
    
    private static func createAttributedText(for user: User) -> NSMutableAttributedString {
        let attributedText = NSMutableAttributedString(
            string: user.name,
            attributes: [
                .font: UIFont.systemFont(ofSize: 32, weight: .heavy),
                .foregroundColor: UIColor.white
            ])
        
        attributedText.append(NSAttributedString(
            string: "  \(user.age)",
            attributes: [
                .font: UIFont.systemFont(ofSize: 24),
                .foregroundColor: UIColor.white
            ]))
        
        return attributedText
    }
}
