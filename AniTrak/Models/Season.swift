//
//  Season.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftData
import Foundation

@Model
final class Season: Decodable {
    var SeasonId: Int
    var Name: String
    
    enum CodingKeys: String, CodingKey {
        case SeasonId
        case Name
    }
    
    init(SeasonId: Int, Name: String) {
        self.SeasonId = SeasonId
        self.Name = Name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        SeasonId = try container.decode(Int.self, forKey: .SeasonId)
        Name = try container.decode(String.self, forKey: .Name)
    }
    
}
