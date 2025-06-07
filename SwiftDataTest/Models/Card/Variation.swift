//
//  Variation.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/22/25.
//


import Foundation
import SwiftData

@Model
final class Variation {
    var uuid: String
    var card: Card?
    var token: Token?
    
    init(uuid: String) {
        self.uuid = uuid
    }
}