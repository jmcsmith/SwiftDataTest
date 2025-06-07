//
//  DataClass.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct DataClass: Codable, Sendable {
    let baseSetSize: Int?
    let block: String?
    let cards: [CardDTO]?
    let cardsphereSetID: Int?
    let code: String?
    let isFoilOnly, isForeignOnly, isNonFoilOnly, isOnlineOnly, isPaperOnly, isPartialPreview: Bool?
    let keyruneCode: String?
    let languages: [String]?
    let mcmID, mcmIDExtras: Int?
    let mcmName, mtgoCode, name, releaseDate: String?
    let parentCode: String?
    let tcgplayerGroupID: Int?
    let tokenSetCode: String?
    let tokens: [TokenDTO]?
    let totalSetSize: Int?
    let translations: TranslationsDTO?
    let type: String?

    enum CodingKeys: String, CodingKey {
        case baseSetSize, cards, block
        case cardsphereSetID = "cardsphereSetId"
        case code, isFoilOnly, isOnlineOnly, keyruneCode, languages, isNonFoilOnly, isForeignOnly, isPaperOnly, isPartialPreview
        case mcmID = "mcmId"
        case mcmIDExtras = "mcmIdExtras"
        case mcmName, mtgoCode, name, releaseDate, parentCode
        case tcgplayerGroupID = "tcgplayerGroupId"
        case tokenSetCode, tokens, totalSetSize, translations, type
    }
}
