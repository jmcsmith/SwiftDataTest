//
//  CollectionCard.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 3/10/25.
//


import SwiftData

@Model
final class CollectionCard {
    var count: Int
    var card: Card
    var isFoil: Bool
    var collection: CardCollection?
    
    init(count: Int, card: Card, isFoil: Bool, collection: CardCollection? = nil) {
        self.count = count
        self.card = card
        self.isFoil = isFoil
        self.collection = collection
    }

}
