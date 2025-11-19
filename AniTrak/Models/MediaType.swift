//
//  MediaType.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftData
import Foundation

@Model
final class MediaType {
    var MediaTypeId: Int
    var Name: String
    
    init(MediaTypeId: Int, Name: String) {
        self.MediaTypeId = MediaTypeId
        self.Name = Name
    }
}
