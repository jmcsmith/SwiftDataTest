//
//  TokenIdentifiersDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct TokenIdentifiersDTO: Codable, Sendable {
    let cardKingdomFoilID, cardKingdomID, cardsphereFoilID, cardsphereID, abuID, cardKingdomEtchedID, miniaturemarketID, mtgjsonFoilVersionID, mtgjsonNonFoilVersionID, mtgoFoilID, scgID, tcgplayerEtchedProductID, tntID: String?
    let deckboxID, mcmID, mcmMetaID, mtgArenaID: String?
    let mtgjsonV4ID, mtgoID, multiverseID, scryfallCardBackID: String?
    let scryfallID, scryfallIllustrationID, scryfallOracleID, tcgplayerProductID, cardtraderID, csiID: String?

    enum CodingKeys: String, CodingKey {
        case cardKingdomFoilID = "cardKingdomFoilId"
        case cardKingdomID = "cardKingdomId"
        case cardsphereFoilID = "cardsphereFoilId"
        case cardsphereID = "cardsphereId"
        case deckboxID = "deckboxId"
        case mcmID = "mcmId"
        case mcmMetaID = "mcmMetaId"
        case mtgArenaID = "mtgArenaId"
        case mtgjsonV4ID = "mtgjsonV4Id"
        case mtgoID = "mtgoId"
        case multiverseID = "multiverseId"
        case scryfallCardBackID = "scryfallCardBackId"
        case scryfallID = "scryfallId"
        case scryfallIllustrationID = "scryfallIllustrationId"
        case scryfallOracleID = "scryfallOracleId"
        case tcgplayerProductID = "tcgplayerProductId"
        case abuID = "abuId"
        case cardKingdomEtchedID = "cardKingdomEtchedId"
        case miniaturemarketID = "miniaturemarketId"
        case mtgjsonFoilVersionID = "mtgjsonFoilVersionId"
        case mtgjsonNonFoilVersionID = "mtgjsonNonFoilVersionId"
        case mtgoFoilID = "mtgoFoilId"
        case scgID = "scgId"
        case tcgplayerEtchedProductID = "tcgplayerEtchedProductId"
        case tntID = "tntId"
        case cardtraderID = "cardtraderId"
        case csiID = "csiId"
    }
}
