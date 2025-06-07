//
//  SetDTO.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let setDTO = try? JSONDecoder().decode(SetDTO.self, from: jsonData)

import Foundation

// MARK: - SetDTO
struct SetDTO: Codable, Sendable {
    let meta: Meta?
    let data: DataClass?
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
            return nil
    }

    required init?(stringValue: String) {
            key = stringValue
    }

    var intValue: Int? {
            return nil
    }

    var stringValue: String {
            return key
    }
}


