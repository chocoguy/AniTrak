//
//  User.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftData
import Foundation

@Model
final class User: Decodable {
    var UserId: Int
    var Username: String
    var CreatedAt: Date
    var LastSync: Date
    var AuthZeroId: String
    var Pfp: String
    
    enum CodingKeys: String, CodingKey {
        case UserId, Username, CreatedAt, LastSync, AuthZeroId, Pfp
    }
    
    init(UserId: Int, Username: String, CreatedAt: Date, LastSync: Date, AuthZeroId: String, Pfp: String) {
        self.UserId = UserId
        self.Username = Username
        self.CreatedAt = CreatedAt
        self.LastSync = LastSync
        self.AuthZeroId = AuthZeroId
        self.Pfp = Pfp
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        UserId = try container.decode(Int.self, forKey: .UserId)
        Username = try container.decode(String.self, forKey: .Username)
        
        CreatedAt = DateFromString(dateString: try container.decode(String.self, forKey: .CreatedAt))
        
        LastSync = DateFromString(dateString: try container.decode(String.self, forKey: .LastSync))
        
        AuthZeroId = try container.decode(String.self, forKey: .AuthZeroId)
        Pfp = try container.decode(String.self, forKey: .Pfp)
    }

}
