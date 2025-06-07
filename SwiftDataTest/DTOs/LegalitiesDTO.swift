//
//  LegalitiesDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct LegalitiesDTO: Codable, Sendable {
    let alchemy, brawl, commander, duel: String?
    let explorer, future, gladiator, historic, historicBrawl: String?
    let legacy, modern, oathbreaker, oldschool, pauper: String?
    let paupercommander, penny, pioneer, predh, premodern, standard: String?
    let standardbrawl, timeless, vintage: String?
}
