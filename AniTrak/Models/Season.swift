//
//  Season.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftData
import Foundation

@Model
final class Season {
    var SeasonId: Int
    var Name: String
    
    init(SeasonId: Int, Name: String) {
        self.SeasonId = SeasonId
        self.Name = Name
    }
}
