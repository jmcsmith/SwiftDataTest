//
//  Translations.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation
import SwiftData

@Model
final class Translations {
    var chineseSimplified: String?
    var chineseTraditional: String?
    var french: String?
    var german: String?
    var italian: String?
    var japanese: String?
    var korean: String?
    var portugueseBrazil: String?
    var russian: String?
    var spanish: String?
    var set: Set?
    

init(chineseSimplified: String? = nil, chineseTraditional: String? = nil, french: String? = nil, german: String? = nil, italian: String? = nil, japanese: String? = nil, korean: String? = nil, portugueseBrazil: String? = nil, russian: String? = nil, spanish: String? = nil) {
        self.chineseSimplified = chineseSimplified
        self.chineseTraditional = chineseTraditional
        self.french = french
        self.german = german
        self.italian = italian
        self.japanese = japanese
        self.korean = korean
        self.portugueseBrazil = portugueseBrazil
        self.russian = russian
        self.spanish = spanish
    }
}
