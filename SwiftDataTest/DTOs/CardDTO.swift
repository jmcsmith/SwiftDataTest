//
//  CardDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct CardDTO: Codable, Sendable {
    let artist: String?
    let artistIDS, availability, boosterTypes: [String]?
    let borderColor: String?
    let colorIdentity, colors, colorIndicator: [String]?
    let convertedManaCost, edhrecRank: Double?
    let edhrecSaltiness: Double?
    let finishes: [String]?
    let flavorText: String?
    let foreignData: [ForeignDatumDTO]?
    let frameVersion: String?
    let hasFoil, hasNonFoil: Bool?
    let identifiers: CardIdentifiersDTO?
    let isReprint: Bool?
    let language, layout: String?
    let legalities: LegalitiesDTO?
    let manaCost: String?
    let manaValue: Double?
    let name, number, originalText, originalType: String?
    let printings: [String]?
    let purchaseUrls: PurchaseUrlsDTO?
    let rarity: String?
    let rulings: [RulingDTO]?
    let setCode: String?
    let sourceProducts: SourceProductsDTO?
    let subtypes, supertypes, subsets: [String]?
    let text, type: String?
    let types: [String]?
    let uuid: String?
    let defense: String?
    let faceConvertedManaCost, faceManaValue: Double?
    let faceName: String?
    let hand: String?
    let hasAlternativeDeckLimit: Bool?
    let isFunny, isReserved: Bool?
    let loyalty: String?
    let life: String?
    let power, toughness, side: String?
    let keywords: [String]?
    let cardParts: [String]?
    let variations: [String]?
    let frameEffects: [String]?
    let leadershipSkills: LeadershipSkillsDTO?
    let isFullArt, isAlternative :Bool?
    let promoTypes: [String]?
    let flavorName, securityStamp: String?
    let otherFaceIDS, originalPrintings, rebalancedPrintings: [String]?
    let isTextless: Bool?
    let faceFlavorName, asciiName, originalReleaseDate, signature, watermark: String?
    let isPromo: Bool?
    let hasContentWarning: Bool?
    let isStarter, isOversized: Bool?
    let relatedCards: RelatedCardsDTO?

    let isOnlineOnly, isOverSized, isRebalanced, isStorySpotlight, isTimeshifted: Bool?

    
    enum CodingKeys: String, CodingKey {
        case artist
        case artistIDS = "artistIds"
        case availability, boosterTypes, borderColor, colorIdentity, colors, colorIndicator, convertedManaCost, edhrecRank, edhrecSaltiness, finishes, flavorText, foreignData, frameVersion, hasFoil, hasNonFoil, identifiers, isReprint, language, layout, legalities, manaCost, manaValue, name, number, originalText, originalType, printings, purchaseUrls, rarity, rulings, setCode, sourceProducts, subtypes, supertypes, text, type, types, uuid, defense, faceConvertedManaCost, faceManaValue, faceName, hand, hasAlternativeDeckLimit, isFunny, isReserved, loyalty, life, power, toughness, side, subsets, keywords, cardParts, variations, frameEffects, leadershipSkills, isFullArt, isAlternative, promoTypes, flavorName, otherFaceIDS, isTextless, faceFlavorName, asciiName, isPromo, hasContentWarning, isStarter, isOnlineOnly, isOverSized, isRebalanced, isStorySpotlight, isTimeshifted, originalPrintings, rebalancedPrintings, securityStamp, signature, watermark, originalReleaseDate, isOversized, relatedCards
    }
}


