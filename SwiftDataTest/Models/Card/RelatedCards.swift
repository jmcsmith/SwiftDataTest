//
//  RelatedCards.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//
import SwiftData

@Model
final class RelatedCards {
    @Attribute(.transformable(by: "NSSecureUnarchiveFromData"))
    var reverseRelated: [String]?
    @Attribute(.transformable(by: "NSSecureUnarchiveFromData"))
    var spellbook: [String]?
    var card: Card?
    
    init(reverseRelated: [String]? = nil, spellbook: [String]? = nil) {
        self.reverseRelated = reverseRelated
        self.spellbook = spellbook
    }
}
