//
//  TrackedAnime.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//


import SwiftData
import Foundation

@Model
final class TrackedAnime: Decodable {
    var TrackedAnimeId: Int
    var UserKey: Int
    var AnimeKey: Int
    var WatchStatusKey: Int
    var StartedWatching: Date?
    var StoppedWatching: Date?
    var LastWatched: Date?
    var EpisodesWatched: Int
    var LastModified: Date
    var IsDeleted: Bool
    var Progress: Double
    var TimeWatched: Int
    
    enum CodingKeys: String, CodingKey {
        case TrackedAnimeId, UserKey, AnimeKey, WatchStatusKey, StartedWatching, StoppedWatching, LastWatched, EpisodesWatched, LastModified, IsDeleted, Progress, TimeWatched
    }
    
    
    init(TrackedAnimeId: Int, UserKey: Int, AnimeKey: Int, WatchStatusKey: Int, StartedWatching: Date, StoppedWatching: Date, LastWatched: Date, EpisodesWatched: Int, LastModified: Date, IsDeleted: Bool, Progress: Double, TimeWatched: Int) {
        self.TrackedAnimeId = TrackedAnimeId
        self.UserKey = UserKey
        self.AnimeKey = AnimeKey
        self.WatchStatusKey = WatchStatusKey
        self.StartedWatching = StartedWatching
        self.StoppedWatching = StoppedWatching
        self.LastWatched = LastWatched
        self.EpisodesWatched = EpisodesWatched
        self.LastModified = LastModified
        self.IsDeleted = IsDeleted
        self.Progress = Progress
        self.TimeWatched = TimeWatched
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.TrackedAnimeId = try container.decode(Int.self, forKey: .TrackedAnimeId)
        self.UserKey = try container.decode(Int.self, forKey: .UserKey)
        self.AnimeKey = try container.decode(Int.self, forKey: .AnimeKey)
        self.WatchStatusKey = try container.decode(Int.self, forKey: .WatchStatusKey)
        
        self.StartedWatching = DateFromString(dateString: try container.decode(String.self, forKey: .StartedWatching))
        
        self.StoppedWatching = DateFromString(dateString: try container.decode(String.self, forKey: .StoppedWatching))
        
        self.LastWatched = try container.decode(Date.self, forKey: .LastWatched)
        
        self.EpisodesWatched = try container.decode(Int.self, forKey: .EpisodesWatched)
        
        self.LastModified = DateFromString(dateString: try container.decode(String.self, forKey: .LastModified))
        
        self.IsDeleted = try container.decode(Bool.self, forKey: .IsDeleted)
        self.Progress = try container.decode(Double.self, forKey: .Progress)
        self.TimeWatched = try container.decode(Int.self, forKey: .TimeWatched)
    }

}
