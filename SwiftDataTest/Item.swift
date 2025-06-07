//
//  Item.swift
//  SwiftDataTest
//
//  Created by Joseph Beaudoin on 6/6/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
