//
//  PurchaseUrls.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//
import SwiftData

@Model
final class PurchaseUrls {
    var cardKingdom: String?
    var cardKingdomEtched: String?
    var cardKingdomFoil: String?
    var cardmarket: String?
    var tcgplayer: String?
    var tcgplayerEtched: String?
    var card: Card?
    
    init(cardKingdom: String? = nil, cardKingdomEtched: String? = nil, cardKingdomFoil: String? = nil, cardmarket: String? = nil, tcgplayer: String? = nil, tcgplayerEtched: String? = nil) {
        self.cardKingdom = cardKingdom
        self.cardKingdomEtched = cardKingdomEtched
        self.cardKingdomFoil = cardKingdomFoil
        self.cardmarket = cardmarket
        self.tcgplayer = tcgplayer
        self.tcgplayerEtched = tcgplayerEtched
    }
}
