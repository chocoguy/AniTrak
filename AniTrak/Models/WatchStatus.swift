//
//  WatchStatus.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//


import SwiftData
import Foundation

@Model
final class WatchStatus {
    var WatchStatusId: Int
    var Name: String
    
    init(WatchStatusId: Int, Name: String) {
        self.WatchStatusId = WatchStatusId
        self.Name = Name
    }
}
