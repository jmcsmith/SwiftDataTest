//
//  ForeignDatumIdentifiersDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct ForeignDatumIdentifiersDTO: Codable, Sendable {
    let multiverseID, scryfallID: String?

    enum CodingKeys: String, CodingKey {
        case multiverseID = "multiverseId"
        case scryfallID = "scryfallId"
    }
}