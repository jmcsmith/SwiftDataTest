//
//  Deck.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 2/15/25.
//

import Foundation
import SwiftData

@Model
final class Deck {
    var name: String
    @Relationship(deleteRule: .cascade, inverse: \DeckCard.deck) var cards: [DeckCard]
    
    init(name: String, cards: [DeckCard]) {
        self.name = name
        self.cards = cards
    }
}



