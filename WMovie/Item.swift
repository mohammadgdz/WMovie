//
//  Item.swift
//  WMovie
//
//  Created by Mohammad on 2025-06-01.
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
