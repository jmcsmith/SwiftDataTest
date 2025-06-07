//
//  DeckCard.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 3/5/25.
//
import SwiftData

@Model
final class DeckCard {
    var count: Int
    var card: Card
    var isFoil: Bool
    var isCommander: Bool
    var isSidebard: Bool
    var deck: Deck?
    
    init(count: Int, card: Card, isFoil: Bool, isCommander: Bool, isSidebard: Bool, deck: Deck? = nil) {
        self.count = count
        self.card = card
        self.isFoil = isFoil
        self.isCommander = isCommander
        self.isSidebard = isSidebard
        self.deck = deck
    }
}
