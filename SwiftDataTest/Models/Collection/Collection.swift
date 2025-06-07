//
//  Collection.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 3/10/25.
//


import Foundation
import SwiftData

@Model
final class CardCollection {
    var name: String
    @Relationship(deleteRule: .cascade, inverse: \CollectionCard.collection) var cards: [CollectionCard]
    
    init(name: String, cards: [CollectionCard]) {
        self.name = name
        self.cards = cards
    }
}
