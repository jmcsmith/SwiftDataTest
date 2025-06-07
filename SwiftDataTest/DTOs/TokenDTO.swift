//
//  TokenDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct TokenDTO: Codable, Sendable {
    let artist: String?
    let artistIDS, availability: [String]?
    let borderColor: String?
    let colorIdentity, colors: [String]?
    let edhrecSaltiness: Double?
    let finishes: [String]?
    let frameVersion: String?
    let hasFoil, hasNonFoil: Bool?
    let identifiers: TokenIdentifiersDTO?
    let keywords: [String]?
    let language, layout, manaCost, name: String?
    let number, power: String?
    let reverseRelated: [String]?
    let setCode: String?
    let subtypes: [String]?
    let supertypes: [String]?
    let text, toughness, type: String?
    let types: [String]?
    let uuid: String?

    enum CodingKeys: String, CodingKey {
        case artist
        case artistIDS = "artistIds"
        case availability, borderColor, colorIdentity, colors, edhrecSaltiness, finishes, frameVersion, hasFoil, hasNonFoil, identifiers, keywords, language, layout, manaCost, name, number, power, reverseRelated, setCode, subtypes, supertypes, text, toughness, type, types, uuid
    }
}
