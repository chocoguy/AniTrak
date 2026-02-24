//
//  OriginalSource.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//


import SwiftData
import Foundation

@Model
final class OriginalSource: Decodable {
    var OriginalSourceId: Int
    var Name: String
    
    enum CodingKeys: String, CodingKey {
        case OriginalSourceid = "OriginalSourceId"
        case Name
    }
    
    init(OriginalSourceId: Int, Name: String) {
        self.OriginalSourceId = OriginalSourceId
        self.Name = Name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        OriginalSourceId = try container.decode(Int.self, forKey: .OriginalSourceid)
        Name = try container.decode(String.self, forKey: .Name)
    }
    
}
