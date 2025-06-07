//
//  Token.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation
import SwiftData

@Model
final class Token {
    var artist: String?
    var artistIds: [String]?
    var asciiName: String?
    var availability: [String]
    var boosterTypes: [String]?
    var borderColor: String
    var cardParts: [String]?
    var colorIdentity: [String]
    var colorIndicator: [String]?
    var colors: [String]
    var edhrecSaltiness: Int?
    var faceName: String?
    var faceFlavorName: String?
    var finishes: [String]
    var flavorName: String?
    var flavorText: String?
    var frameEffects: [String]?
    var frameVersion: String
    var hasFoil: Bool
    var hasNonFoil: Bool
    var identifiers: Identifiers
    var isFullArt: Bool?
    var isFunny: Bool?
    var isOnlineOnly: Bool?
    var isOversized: Bool?
    var isPromo: Bool?
    var isReprint: Bool?
    var isTextless: Bool?
    var keywords: [String]?
    var language: String
    var layout: String
    var loyalty: String?
    var manaCost: String?
    var name: String
    var number: String
    var orientation: String?
    var originalText: String?
    var originalType: String?
    var otherFaceIds: [String]?
    var power: String?
    var promoTypes: [String]?
    var relatedCards: RelatedCards?
    var reverseRelated: [String]?
    var securityStamp: String?
    var setCode: String
    var side: String?
    var signature: String?
    var sourceProducts: [String]?
    var subsets: [String]?
    var subtypes: [String]
    var supertypes: [String]
    var text: String?
    var toughness: String?
    var type: String
    var types: [String]
    var uuid: String
    var watermark: String?
    var set: Set?
    
    init(artist: String? = nil, artistIds: [String]? = nil, asciiName: String? = nil, availability: [String], boosterTypes: [String]? = nil, borderColor: String, cardParts: [String]? = nil, colorIdentity: [String], colorIndicator: [String]? = nil, colors: [String], edhrecSaltiness: Int? = nil, faceName: String? = nil, faceFlavorName: String? = nil, finishes: [String], flavorName: String? = nil, flavorText: String? = nil, frameEffects: [String]? = nil, frameVersion: String, hasFoil: Bool, hasNonFoil: Bool, identifiers: Identifiers, isFullArt: Bool? = nil, isFunny: Bool? = nil, isOnlineOnly: Bool? = nil, isOversized: Bool? = nil, isPromo: Bool? = nil, isReprint: Bool? = nil, isTextless: Bool? = nil, keywords: [String]? = nil, language: String, layout: String, loyalty: String? = nil, manaCost: String? = nil, name: String, number: String, orientation: String? = nil, originalText: String? = nil, originalType: String? = nil, otherFaceIds: [String]? = nil, power: String? = nil, promoTypes: [String]? = nil, relatedCards: RelatedCards? = nil, reverseRelated: [String]? = nil, securityStamp: String? = nil, setCode: String, side: String? = nil, signature: String? = nil, sourceProducts: [String]? = nil, subsets: [String]? = nil, subtypes: [String], supertypes: [String], text: String? = nil, toughness: String? = nil, type: String, types: [String], uuid: String, watermark: String? = nil) {
        self.artist = artist
        self.artistIds = artistIds
        self.asciiName = asciiName
        self.availability = availability
        self.boosterTypes = boosterTypes
        self.borderColor = borderColor
        self.cardParts = cardParts
        self.colorIdentity = colorIdentity
        self.colorIndicator = colorIndicator
        self.colors = colors
        self.edhrecSaltiness = edhrecSaltiness
        self.faceName = faceName
        self.faceFlavorName = faceFlavorName
        self.finishes = finishes
        self.flavorName = flavorName
        self.flavorText = flavorText
        self.frameEffects = frameEffects
        self.frameVersion = frameVersion
        self.hasFoil = hasFoil
        self.hasNonFoil = hasNonFoil
        self.identifiers = identifiers
        self.isFullArt = isFullArt
        self.isFunny = isFunny
        self.isOnlineOnly = isOnlineOnly
        self.isOversized = isOversized
        self.isPromo = isPromo
        self.isReprint = isReprint
        self.isTextless = isTextless
        self.keywords = keywords
        self.language = language
        self.layout = layout
        self.loyalty = loyalty
        self.manaCost = manaCost
        self.name = name
        self.number = number
        self.orientation = orientation
        self.originalText = originalText
        self.originalType = originalType
        self.otherFaceIds = otherFaceIds
        self.power = power
        self.promoTypes = promoTypes
        self.relatedCards = relatedCards
        self.reverseRelated = reverseRelated
        self.securityStamp = securityStamp
        self.setCode = setCode
        self.side = side
        self.signature = signature
        self.sourceProducts = sourceProducts
        self.subsets = subsets
        self.subtypes = subtypes
        self.supertypes = supertypes
        self.text = text
        self.toughness = toughness
        self.type = type
        self.types = types
        self.uuid = uuid
        self.watermark = watermark
    }

}
