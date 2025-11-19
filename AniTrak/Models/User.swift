//
//  User.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftData
import Foundation

@Model
final class User {
    var UserId: Int
    var Username: String
    var CreatedAt: Date
    var LastSync: Date
    var AuthZeroId: String
    var Pfp: String
    
    init(UserId: Int, Username: String, CreatedAt: Date, LastSync: Date, AuthZeroId: String, Pfp: String) {
        self.UserId = UserId
        self.Username = Username
        self.CreatedAt = CreatedAt
        self.LastSync = LastSync
        self.AuthZeroId = AuthZeroId
        self.Pfp = Pfp
    }
    

}
