//
//  SourceProductsDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import Foundation

struct SourceProductsDTO: Codable, Sendable {
    let foil, nonfoil: [String]?
}