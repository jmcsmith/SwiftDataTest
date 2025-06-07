//
//  ForeignDatumDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct ForeignDatumDTO: Codable, Sendable {
    let flavorText: String?
    let identifiers: ForeignDatumIdentifiersDTO?
    let language: String?
    let multiverseID: Int?
    let name, text, type: String?

    enum CodingKeys: String, CodingKey {
        case flavorText, identifiers, language
        case multiverseID = "multiverseId"
        case name, text, type
    }
}