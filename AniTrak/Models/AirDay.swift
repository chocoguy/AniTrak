//
//  AirDay.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftData
import Foundation

@Model
final class AirDay: Decodable {
    var AirDayId: Int
    var Name: String
    
    enum CodingKeys: String, CodingKey {
        case AirDayId = "AirDayId"
        case Name = "Name"
    }
    
    init(AirDayId: Int, Name: String) {
        self.AirDayId = AirDayId
        self.Name = Name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        AirDayId = try container.decode(Int.self, forKey: .AirDayId)
        Name = try container.decode(String.self, forKey: .Name)
    }
    
}
