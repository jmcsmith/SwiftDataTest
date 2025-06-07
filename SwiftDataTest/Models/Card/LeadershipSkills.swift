//
//  LeadershipSkills.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//
import SwiftData

@Model
final class LeadershipSkills {
    var brawl: Bool
    var commander: Bool
    var oathbreaker: Bool
    var card: Card?
    
    init(brawl: Bool, commander: Bool, oathbreaker: Bool) {
        self.brawl = brawl
        self.commander = commander
        self.oathbreaker = oathbreaker
    }
}
