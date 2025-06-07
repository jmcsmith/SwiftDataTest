//
//  TranslationsDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct TranslationsDTO: Codable, Sendable {
    let chineseSimplified, chineseTraditional: String?
    let french, german, italian: String?
    let japanese, korean, portugueseBrazil, russian: String?
    let spanish: String?

    enum CodingKeys: String, CodingKey {
        case chineseSimplified = "Chinese Simplified"
        case chineseTraditional = "Chinese Traditional"
        case french = "French"
        case german = "German"
        case italian = "Italian"
        case japanese = "Japanese"
        case korean = "Korean"
        case portugueseBrazil = "Portuguese (Brazil)"
        case russian = "Russian"
        case spanish = "Spanish"
    }
}


