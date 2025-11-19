//
//  Anime.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//


import SwiftData
import Foundation

@Model
final class Anime {
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

}
