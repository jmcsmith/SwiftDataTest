//
//  ForeignData.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//
import SwiftData

@Model
final class ForeignData {
    var faceName: String?
    var flavorText: String?
    @Relationship(deleteRule: .cascade, inverse: \Identifiers.foreignData) var identifiers: Identifiers?
    var language: String
    var name: String
    var text: String?
    var type: String?
    var card: Card?
    
    init(faceName: String? = nil, flavorText: String? = nil, identifiers: Identifiers?, language: String, name: String, text: String? = nil, type: String? = nil) {
        self.faceName = faceName
        self.flavorText = flavorText
        self.identifiers = identifiers
        self.language = language
        self.name = name
        self.text = text
        self.type = type
    }
}
