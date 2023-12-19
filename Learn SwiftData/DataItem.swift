//
//  DataItem.swift
//  Learn SwiftData
//
//  Created by Danielle Lewis on 12/19/23.
//

import Foundation
import SwiftData

@Model
class DataItem {
    var id: String
    var creationdate: Date
    
    init() {
        id = UUID().uuidString
        creationdate = Date()
    }
}
