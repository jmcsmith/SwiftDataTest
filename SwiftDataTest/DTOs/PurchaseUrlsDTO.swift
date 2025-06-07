//
//  PurchaseUrlsDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct PurchaseUrlsDTO: Codable, Sendable {
    let cardKingdom, cardKingdomFoil, cardKingdomEtched, cardmarket, tcgplayer, tcgplayerEtched: String?
}
