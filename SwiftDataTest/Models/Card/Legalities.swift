//
//  Legalities.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//
import SwiftData

@Model
final class Legalities {
    var alchemy: String?
    var brawl: String?
    var commander: String?
    var duel: String?
    var explorer: String?
    var future: String?
    var gladiator: String?
    var historic: String?
    var historicBrawl: String?
    var legacy: String?
    var modern: String?
    var oathbreaker: String?
    var oldschool: String?
    var pauper: String?
    var pauperCommander: String?
    var penny: String?
    var pioneer: String?
    var predh: String?
    var premodern: String?
    var standard: String?
    var standardBrawl: String?
    var timeless: String?
    var vintage: String?
    var card: Card?
    
    init(alchemy: String? = nil, brawl: String? = nil, commander: String? = nil, duel: String? = nil, explorer: String? = nil, future: String? = nil, gladiator: String? = nil, historic: String? = nil, historicBrawl: String? = nil, legacy: String? = nil, modern: String? = nil, oathbreaker: String? = nil, oldschool: String? = nil, pauper: String? = nil, pauperCommander: String? = nil, penny: String? = nil, pioneer: String? = nil, predh: String? = nil, premodern: String? = nil, standard: String? = nil, standardBrawl: String? = nil, timeless: String? = nil, vintage: String? = nil) {
        self.alchemy = alchemy
        self.brawl = brawl
        self.commander = commander
        self.duel = duel
        self.explorer = explorer
        self.future = future
        self.gladiator = gladiator
        self.historic = historic
        self.historicBrawl = historicBrawl
        self.legacy = legacy
        self.modern = modern
        self.oathbreaker = oathbreaker
        self.oldschool = oldschool
        self.pauper = pauper
        self.pauperCommander = pauperCommander
        self.penny = penny
        self.pioneer = pioneer
        self.predh = predh
        self.premodern = premodern
        self.standard = standard
        self.standardBrawl = standardBrawl
        self.timeless = timeless
        self.vintage = vintage
    }
}
