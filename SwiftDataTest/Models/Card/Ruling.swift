//
//  Ruling.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//
import SwiftData

@Model
final class Ruling {
    var date: String
    var text: String
    var card: Card?
    
    init(date: String, text: String) {
        self.date = date
        self.text = text
    }
}
