//
//  OriginalSource.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//


import SwiftData
import Foundation

@Model
final class OriginalSource {
    var OriginalSourceId: Int
    var Name: String
    
    init(OriginalSourceId: Int, Name: String) {
        self.OriginalSourceId = OriginalSourceId
        self.Name = Name
    }
}
