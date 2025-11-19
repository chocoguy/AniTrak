//
//  AirDay.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftData
import Foundation

@Model
final class AirDay {
    var AirDayId: Int
    var Name: String
    
    init(AirDayId: Int, Name: String) {
        self.AirDayId = AirDayId
        self.Name = Name
    }
}
