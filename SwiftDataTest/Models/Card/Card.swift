//
//  Card.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation
import SwiftData
import SwiftUI

@Model
final class Card {
    var artist: String?
    var asciiName: String?
    var artistIds: [String]? = []
    var availability: [String] = []
    var boosterTypes: [String]? = []
    var borderColor: String
    var cardParts: [String]? = []
    var colorIdentity: [String] = []
    var colorIndicator: [String]? = []
    var colors: [String] = []
    var convertedManaCost: Double
    var defense: String?
    var edhrecRank: Double?
    var edhrecSaltiness: Double?
    var faceConvertedManaCost: Double?
    var faceFlavorName: String?
    var faceManaValue: Double?
    var faceName: String?
    var finishes: [String] = []
    var flavorName: String?
    var flavorText: String?
    @Relationship(deleteRule: .cascade, inverse: \ForeignData.card) var foreignData: [ForeignData] = []
    var frameEffects: [String]? = []
    var frameVersion: String
    var hand: String?
    var hasAlternativeDeckLimit: Bool?
    var hasContentWarning: Bool?
    var hasFoil: Bool
    var hasNonFoil: Bool
    @Relationship(deleteRule: .cascade, inverse: \Identifiers.card) var identifiers: Identifiers?
    var isAlternative: Bool?
    var isFullArt: Bool?
    var isFunny: Bool?
    var isOnlineOnly: Bool?
    var isOversized: Bool?
    var isPromo: Bool?
    var isRebalanced: Bool?
    var isReprint: Bool?
    var isReserved: Bool?
    var isStarter: Bool?
    var isStorySpotlight: Bool?
    var isTextless: Bool?
    var isTimeshifted: Bool?
    @Relationship(deleteRule: .cascade, inverse: \Keyword.card) var keywords: [Keyword] = []
    var language: String
    var layout: String
    @Relationship(deleteRule: .cascade, inverse: \LeadershipSkills.card) var leadershipSkills: LeadershipSkills?
    @Relationship(deleteRule: .cascade, inverse: \Legalities.card) var legalities: Legalities?
    var life: String?
    var loyalty: String?
    var manaCost: String?
    var manaValue: Double
    var name: String
    var number: String
    var originalPrintings: [String]? = []
    var originalReleaseDate: String?
    var originalText: String?
    var originalType: String?
    var otherFaceIds: [String]? = []
    var power: String?
    var printings: [String]? = []
    var promoTypes: [String]? = []
    @Relationship(deleteRule: .cascade, inverse: \PurchaseUrls.card) var purchaseUrls: PurchaseUrls?
    var rarity: String
    @Relationship(deleteRule: .cascade, inverse: \RelatedCards.card) var relatedCards: RelatedCards?
    var rebalancedPrintings: [String]? = []
    @Relationship(deleteRule: .cascade, inverse: \Ruling.card) var rulings: [Ruling]? = []
    var securityStamp: String?
    var setCode: String
    var side: String?
    var signature: String?
    var subsets: [String]? = []
    @Relationship(deleteRule: .cascade, inverse: \SubType.card) var subtypes: [SubType] = []
    @Relationship(deleteRule: .cascade, inverse: \SuperType.card) var supertypes: [SuperType] = []
    var text: String?
    var toughness: String?
    var type: String
    @Relationship(deleteRule: .cascade, inverse: \CardType.card) var types: [CardType] = []
    var uuid: String
    var variations: [String] = []
    var watermark: String?
    var set: Set?
    
    #Index<Card>([\.name])
    
    
    init(artist: String? = nil, asciiName: String? = nil, artistIds: [String]? = nil, availability: [String], boosterTypes: [String]? = nil, borderColor: String, cardParts: [String]? = nil, colorIdentity: [String], colorIndicator: [String]? = nil, colors: [String], convertedManaCost: Double, defense: String? = nil, edhrecRank: Double? = nil, edhrecSaltiness: Double? = nil, faceConvertedManaCost: Double? = nil, faceFlavorName: String? = nil, faceManaValue: Double? = nil, faceName: String? = nil, finishes: [String], flavorName: String? = nil, flavorText: String? = nil, foreignData: [ForeignData], frameEffects: [String]? = nil, frameVersion: String, hand: String? = nil, hasAlternativeDeckLimit: Bool? = nil, hasContentWarning: Bool? = nil, hasFoil: Bool, hasNonFoil: Bool, identifiers: Identifiers? = nil, isAlternative: Bool? = nil, isFullArt: Bool? = nil, isFunny: Bool? = nil, isOnlineOnly: Bool? = nil, isOversized: Bool? = nil, isPromo: Bool? = nil, isRebalanced: Bool? = nil, isReprint: Bool? = nil, isReserved: Bool? = nil, isStarter: Bool? = nil, isStorySpotlight: Bool? = nil, isTextless: Bool? = nil, isTimeshifted: Bool? = nil, keywords: [Keyword], language: String, layout: String, leadershipSkills: LeadershipSkills? = nil, legalities: Legalities? = nil, life: String? = nil, loyalty: String? = nil, manaCost: String? = nil, manaValue: Double, name: String, number: String, originalPrintings: [String]? = nil, originalReleaseDate: String? = nil, originalText: String? = nil, originalType: String? = nil, otherFaceIds: [String]? = nil, power: String? = nil, printings: [String]? = nil, promoTypes: [String]? = nil, purchaseUrls: PurchaseUrls? = nil, rarity: String, relatedCards: RelatedCards? = nil, rebalancedPrintings: [String]? = nil, rulings: [Ruling]? = nil, securityStamp: String? = nil, setCode: String, side: String? = nil, signature: String? = nil, subsets: [String]? = nil, subtypes: [SubType], supertypes: [SuperType], text: String? = nil, toughness: String? = nil, type: String, types: [CardType], uuid: String, variations: [String], watermark: String? = nil, set: Set? = nil) {
        self.artist = artist
        self.asciiName = asciiName
        self.artistIds = artistIds
        self.availability = availability
        self.boosterTypes = boosterTypes
        self.borderColor = borderColor
        self.cardParts = cardParts
        self.colorIdentity = colorIdentity
        self.colorIndicator = colorIndicator
        self.colors = colors
        self.convertedManaCost = convertedManaCost
        self.defense = defense
        self.edhrecRank = edhrecRank
        self.edhrecSaltiness = edhrecSaltiness
        self.faceConvertedManaCost = faceConvertedManaCost
        self.faceFlavorName = faceFlavorName
        self.faceManaValue = faceManaValue
        self.faceName = faceName
        self.finishes = finishes
        self.flavorName = flavorName
        self.flavorText = flavorText
        self.foreignData = foreignData
        self.frameEffects = frameEffects
        self.frameVersion = frameVersion
        self.hand = hand
        self.hasAlternativeDeckLimit = hasAlternativeDeckLimit
        self.hasContentWarning = hasContentWarning
        self.hasFoil = hasFoil
        self.hasNonFoil = hasNonFoil
        self.identifiers = identifiers
        self.isAlternative = isAlternative
        self.isFullArt = isFullArt
        self.isFunny = isFunny
        self.isOnlineOnly = isOnlineOnly
        self.isOversized = isOversized
        self.isPromo = isPromo
        self.isRebalanced = isRebalanced
        self.isReprint = isReprint
        self.isReserved = isReserved
        self.isStarter = isStarter
        self.isStorySpotlight = isStorySpotlight
        self.isTextless = isTextless
        self.isTimeshifted = isTimeshifted
        self.keywords = keywords
        self.language = language
        self.layout = layout
        self.leadershipSkills = leadershipSkills
        self.legalities = legalities
        self.life = life
        self.loyalty = loyalty
        self.manaCost = manaCost
        self.manaValue = manaValue
        self.name = name
        self.number = number
        self.originalPrintings = originalPrintings
        self.originalReleaseDate = originalReleaseDate
        self.originalText = originalText
        self.originalType = originalType
        self.otherFaceIds = otherFaceIds
        self.power = power
        self.printings = printings
        self.promoTypes = promoTypes
        self.purchaseUrls = purchaseUrls
        self.rarity = rarity
        self.relatedCards = relatedCards
        self.rebalancedPrintings = rebalancedPrintings
        self.rulings = rulings
        self.securityStamp = securityStamp
        self.setCode = setCode
        self.side = side
        self.signature = signature
        self.subsets = subsets
        self.subtypes = subtypes
        self.supertypes = supertypes
        self.text = text
        self.toughness = toughness
        self.type = type
        self.types = types
        self.uuid = uuid
        self.variations = variations
        self.watermark = watermark
        self.set = set
    }
    func getRarityColor() -> RaritySymbolColor {
        if self.isTimeshifted ?? false {
            return .timeshifted
        }
        if self.rarity == "common" {
            return .common
        } else if self.rarity == "uncommon" {
            return .uncommon
        } else if self.rarity == "rare" {
            return .rare
        } else if self.rarity == "mythic" {
            return .mythic
        } else if self.rarity == "timeshifted" {
            return .timeshifted
        }
        return .common
    }
    func getGradientColors() -> [Color] {
        var colors: [Color] = []
        let identities = self.colorIdentity
        //            let identities: [String?] = colorIdentities.map ({ $0.color })
        
        if identities.contains("W") {
            colors.append(Color(UIColor(named: "Plains") ?? UIColor.white))
        }
        if identities.contains("U") {
            colors.append(Color(UIColor(named: "Islands") ?? UIColor.white))
        }
        if identities.contains("B") {
            colors.append(Color(UIColor(named: "Swamps") ?? UIColor.white))
        }
        if identities.contains("R") {
            colors.append(Color(UIColor(named: "Mountains") ?? UIColor.white))
        }
        if identities.contains("G") {
            colors.append(Color(UIColor(named: "Forests") ?? UIColor.white))
        }
        if colors.count == 0 {
            if type == "Land" {
                colors = [Color(UIColor(named: "Lands") ?? UIColor.white)]
                
            } else {
                colors = [Color(UIColor(named: "Artifacts") ?? UIColor.white)]
            }
        }
        if colors.count == 1 {
            colors += colors
        }
        
        
        return colors
    }
}


enum RaritySymbolColor {
    case common
    case uncommon
    case rare
    case mythic
    case timeshifted
    var colors: [Color] {
        switch self {
            case .common: return [ Color.primary
                                   
            ]
            case .uncommon: return [ Color(hex: 0x5A6572),
                                     Color(hex: 0x9E9E9E),
                                     Color(hex: 0x5A6572),
                                     
            ]
            case .rare: return [ Color(hex: 0x876A3B),
                                 Color(hex: 0xDFBD6B),
                                 Color(hex: 0x876A3B),
                                 
            ]
            case .mythic: return [ Color(hex: 0xB21F0F),
                                   Color(hex: 0xF38300),
                                   Color(hex: 0xB21F0F),
                                   
            ]
            case .timeshifted: return [ Color(hex: 0x652978),
                                        Color(hex: 0xC09AC5),
                                        Color(hex: 0x652978),
                                        
            ]
                
        }
    }
    
    var linearGradient: LinearGradient
    {
        return LinearGradient(
            gradient: Gradient(colors: self.colors),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

extension View {
    func shine(_ color: RaritySymbolColor) -> some View {
        ZStack {
            self.opacity(0)
            color.linearGradient.mask(self)
        }.fixedSize()
    }
}
fileprivate extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init( .sRGB,
                   red: Double((hex >> 16) & 0xff) / 255,
                   green: Double((hex >> 08) & 0xff) / 255,
                   blue: Double((hex >> 00) & 0xff) / 255,
                   opacity: alpha )
    }
}


