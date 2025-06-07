//
//  RelatedCardsDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/21/25.
//


import Foundation

struct RelatedCardsDTO: Codable, Sendable {
    let reverseRelated, spellbook: [String]?
}