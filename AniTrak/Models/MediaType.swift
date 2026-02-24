//
//  MediaType.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftData
import Foundation

@Model
final class MediaType: Decodable {
    var MediaTypeId: Int
    var Name: String
    
    enum CodingKeys: String, CodingKey {
        case MediaTypeId = "MediaTypeId"
        case Name = "Name"
    }
    
    init(MediaTypeId: Int, Name: String) {
        self.MediaTypeId = MediaTypeId
        self.Name = Name
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        MediaTypeId = try container.decode(Int.self, forKey: .MediaTypeId)
        Name = try container.decode(String.self, forKey: .Name)
    }
    
}



