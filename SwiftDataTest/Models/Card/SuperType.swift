//
//  SuperType.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/22/25.
//


import Foundation
import SwiftData

@Model
final class SuperType {
    var text: String
    var card: Card?
    var token: Token?
    
    init(text: String) {
        self.text = text
    }
}