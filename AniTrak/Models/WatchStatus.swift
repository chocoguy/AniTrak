//
//  WatchStatus.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//


import SwiftData
import Foundation

@Model
final class WatchStatus: Decodable {
    var WatchStatusId: Int
    var Name: String
    
    enum CodingKeys: String, CodingKey {
        case WatchStatusId, Name
    }
    
    init(WatchStatusId: Int, Name: String) {
        self.WatchStatusId = WatchStatusId
        self.Name = Name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        WatchStatusId = try container.decode(Int.self, forKey: .WatchStatusId)
        Name = try container.decode(String.self, forKey: .Name)
    }
    
}
