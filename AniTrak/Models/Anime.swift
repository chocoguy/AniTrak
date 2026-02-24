//
//  Anime.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//


import SwiftData
import Foundation

@Model
final class Anime: Decodable {
    var AnimeId: Int
    var SeasonKey: Int
    var MediaTypeKey: Int
    var OriginalSourceKey: Int
    var AirDayKey: Int
    
    var Title: String
    var Episodes: Int
    var Studio: String
    var OnAir: Date
    var OffAir: Date
    var Synopsis: String
    var MalScore: Double
    var MalRank: Int
    var Genre: String
    var Poster: String
    var EpisodeTime: Int
    var LastSynced: Date
    var PullCount: Int
    var LastModified: Date
    
    enum CodingKeys: String, CodingKey {
        case AnimeId, SeasonKey, MediaTypeKey, OriginalSourceKey, AirDayKey, Title, Episodes, Studio, OnAir, OffAir, Synopsis, MalScore, MalRank, Genre, Poster, EpisodeTime, LastSynced, PullCount, LastModified
    }
    
    init(AnimeId: Int, SeasonKey: Int, MediaTypeKey: Int, OriginalSourceKey: Int, AirDayKey: Int, Title: String, Episodes: Int, Studio: String, OnAir: Date, OffAir: Date, Synopsis: String, MalScore: Double, MalRank: Int, Genre: String, Poster: String, EpisodeTime: Int, LastSynced: Date, PullCount: Int, LastModified: Date) {
        self.AnimeId = AnimeId
        self.SeasonKey = SeasonKey
        self.MediaTypeKey = MediaTypeKey
        self.OriginalSourceKey = OriginalSourceKey
        self.AirDayKey = AirDayKey
        self.Title = Title
        self.Episodes = Episodes
        self.Studio = Studio
        self.OnAir = OnAir
        self.OffAir = OffAir
        self.Synopsis = Synopsis
        self.MalScore = MalScore
        self.MalRank = MalRank
        self.Genre = Genre
        self.Poster = Poster
        self.EpisodeTime = EpisodeTime
        self.LastSynced = LastSynced
        self.PullCount = PullCount
        self.LastModified = LastModified
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        AnimeId = try container.decode(Int.self, forKey: .AnimeId)
        SeasonKey = try container.decode(Int.self, forKey: .SeasonKey)
        MediaTypeKey = try container.decode(Int.self, forKey: .MediaTypeKey)
        OriginalSourceKey = try container.decode(Int.self, forKey: .OriginalSourceKey)
        AirDayKey = try container.decode(Int.self, forKey: .AirDayKey)
        Title = try container.decode(String.self, forKey: .Title)
        Episodes = try container.decode(Int.self, forKey: .Episodes)
        Studio = try container.decode(String.self, forKey: .Studio)
        
        OnAir = DateFromString(dateString: try container.decode(String.self, forKey: .OnAir))
        
        OffAir = DateFromString(dateString: try container.decode(String.self, forKey: .OffAir))
        
        Synopsis = try container.decode(String.self, forKey: .Synopsis)
        MalScore = try container.decode(Double.self, forKey: .MalScore)
        MalRank = try container.decode(Int.self, forKey: .MalRank)
        Genre = try container.decode(String.self, forKey: .Genre)
        Poster = try container.decode(String.self, forKey: .Poster)
        EpisodeTime = try container.decode(Int.self, forKey: .EpisodeTime)
        
        LastSynced = DateFromString(dateString: try container.decode(String.self, forKey: .LastSynced))
        
        PullCount = try container.decode(Int.self, forKey: .PullCount)
        
        LastModified = DateFromString(dateString: try container.decode(String.self, forKey: .LastModified))
    }

}
