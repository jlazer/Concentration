//
//  Concentration.swift
//  Concentration
//
//  Created by Justin Lazarski on 4/23/18.
//  Copyright © 2018 Justin Lazarski. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
  
    func chooseCard(at index: Int)
    {
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
 
        }
    }
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
           cards += [card, card]
        }
        // TODO shuffle the cards
        
    }
}
