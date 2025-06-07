//
//  SetList.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


// MARK: - SetList
struct SetList: Codable, Sendable {
    let meta: Meta?
    let data: [SetListDatum]?
}

// MARK: - Datum
struct SetListDatum: Codable, Sendable {
    let baseSetSize: Int?
    let code: String?
    let isFoilOnly, isOnlineOnly: Bool?
    let keyruneCode: String?
    let languages: [String]?
    let name, releaseDate: String?
    let totalSetSize: Int?
    let type: String?
    let block: String?
    let isNonFoilOnly: Bool?
    let parentCode: String?
    let mcmID: Int?
    let mcmName: String?
    let tcgplayerGroupID: Int?
    let tokenSetCode: String?
    let cardsphereSetID: Int?
    let mcmIDExtras: Int?
    let mtgoCode: String?
    let isPartialPreview, isForeignOnly: Bool?

    enum CodingKeys: String, CodingKey {
        case baseSetSize, code, isFoilOnly, isOnlineOnly, keyruneCode, languages, name, releaseDate, totalSetSize, type, block, isNonFoilOnly, parentCode
        case mcmID = "mcmId"
        case mcmName
        case tcgplayerGroupID = "tcgplayerGroupId"
        case tokenSetCode
        case cardsphereSetID = "cardsphereSetId"
        case mcmIDExtras = "mcmIdExtras"
        case mtgoCode, isPartialPreview, isForeignOnly
    }
}

