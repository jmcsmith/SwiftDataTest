//
//  Identifiers.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//
import SwiftData

@Model
final class Identifiers {
    var abuId: String?
    var cardKingdomEtchedId: String?
    var cardKingdomFoilId: String?
    var cardKingdomId: String?
    var cardsphereId: String?
    var cardsphereFoilId: String?
    var cardtraderId: String?
    var csiId: String?
    var mcmId: String?
    var mcmMetaId: String?
    var miniaturemarketId: String?
    var mtgArenaId: String?
    var mtgjsonFoilVersionId: String?
    var mtgjsonNonFoilVersionId: String?
    var mtgjsonV4Id: String?
    var mtgoFoilId: String?
    var mtgoId: String?
    var multiverseId: String?
    var scgId: String?
    var scryfallId: String?
    var scryfallCardBackId: String?
    var scryfallOracleId: String?
    var scryfallIllustrationId: String?
    var tcgplayerProductId: String?
    var tcgplayerEtchedProductId: String?
    var tntId: String?
    var card: Card?
    var token: Token?
    var foreignData: ForeignData?

    
    init(abuId: String? = nil, cardKingdomEtchedId: String? = nil, cardKingdomFoilId: String? = nil, cardKingdomId: String? = nil, cardsphereId: String? = nil, cardsphereFoilId: String? = nil, cardtraderId: String? = nil, csiId: String? = nil, mcmId: String? = nil, mcmMetaId: String? = nil, miniaturemarketId: String? = nil, mtgArenaId: String? = nil, mtgjsonFoilVersionId: String? = nil, mtgjsonNonFoilVersionId: String? = nil, mtgjsonV4Id: String? = nil, mtgoFoilId: String? = nil, mtgoId: String? = nil, multiverseId: String? = nil, scgId: String? = nil, scryfallId: String? = nil, scryfallCardBackId: String? = nil, scryfallOracleId: String? = nil, scryfallIllustrationId: String? = nil, tcgplayerProductId: String? = nil, tcgplayerEtchedProductId: String? = nil, tntId: String? = nil) {
        self.abuId = abuId
        self.cardKingdomEtchedId = cardKingdomEtchedId
        self.cardKingdomFoilId = cardKingdomFoilId
        self.cardKingdomId = cardKingdomId
        self.cardsphereId = cardsphereId
        self.cardsphereFoilId = cardsphereFoilId
        self.cardtraderId = cardtraderId
        self.csiId = csiId
        self.mcmId = mcmId
        self.mcmMetaId = mcmMetaId
        self.miniaturemarketId = miniaturemarketId
        self.mtgArenaId = mtgArenaId
        self.mtgjsonFoilVersionId = mtgjsonFoilVersionId
        self.mtgjsonNonFoilVersionId = mtgjsonNonFoilVersionId
        self.mtgjsonV4Id = mtgjsonV4Id
        self.mtgoFoilId = mtgoFoilId
        self.mtgoId = mtgoId
        self.multiverseId = multiverseId
        self.scgId = scgId
        self.scryfallId = scryfallId
        self.scryfallCardBackId = scryfallCardBackId
        self.scryfallOracleId = scryfallOracleId
        self.scryfallIllustrationId = scryfallIllustrationId
        self.tcgplayerProductId = tcgplayerProductId
        self.tcgplayerEtchedProductId = tcgplayerEtchedProductId
        self.tntId = tntId
    }
}

