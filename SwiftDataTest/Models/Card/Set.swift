//
//  Set.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation
import SwiftData

@Model
final class Set {
    var baseSetSize: Int
    var block: String?
    @Relationship(deleteRule: .cascade, inverse: \Card.set) var cards: [Card]
    var cardsphereSetId: Int?
    var code: String
    var isForeignOnly: Bool?
    var isFoilOnly: Bool
    var isNonFoilOnly: Bool?
    var isOnlineOnly: Bool
    var isPaperOnly: Bool?
    var isPartialPreview: Bool?
    var keyruneCode: String
    var languages: [String] = []
    var mcmId: Int?
    var mcmIdExtras: Int?
    var mcmName: String?
    var mtgoCode: String?
    var name: String
    var parentCode: String?
    var releaseDate: String
    var tcgplayerGroupId: Int?
    @Relationship(deleteRule: .cascade, inverse: \Token.set) var tokens: [Token]
    var tokenSetCode: String?
    var totalSetSize: Int
    @Relationship(deleteRule: .cascade, inverse: \Translations.set) var translations: Translations?
    var type: String
    
    #Index<Set>([\.name], [\.code])
    
    init(baseSetSize: Int, block: String? = nil, cards: [Card], cardsphereSetId: Int? = nil, code: String, isForeignOnly: Bool? = nil, isFoilOnly: Bool, isNonFoilOnly: Bool? = nil, isOnlineOnly: Bool, isPaperOnly: Bool? = nil, isPartialPreview: Bool? = nil, keyruneCode: String, languages: [String] = [], mcmId: Int? = nil, mcmIdExtras: Int? = nil, mcmName: String? = nil, mtgoCode: String? = nil, name: String, parentCode: String? = nil, releaseDate: String, tcgplayerGroupId: Int? = nil, tokens: [Token], tokenSetCode: String? = nil, totalSetSize: Int, translations: Translations?, type: String) {
        self.baseSetSize = baseSetSize
        self.block = block
        self.cards = cards
        self.cardsphereSetId = cardsphereSetId
        self.code = code
        self.isForeignOnly = isForeignOnly
        self.isFoilOnly = isFoilOnly
        self.isNonFoilOnly = isNonFoilOnly
        self.isOnlineOnly = isOnlineOnly
        self.isPaperOnly = isPaperOnly
        self.isPartialPreview = isPartialPreview
        self.keyruneCode = keyruneCode
        self.languages = languages
        self.mcmId = mcmId
        self.mcmIdExtras = mcmIdExtras
        self.mcmName = mcmName
        self.mtgoCode = mtgoCode
        self.name = name
        self.parentCode = parentCode
        self.releaseDate = releaseDate
        self.tcgplayerGroupId = tcgplayerGroupId
        self.tokens = tokens
        self.tokenSetCode = tokenSetCode
        self.totalSetSize = totalSetSize
        self.translations = translations
        self.type = type
    }

}


