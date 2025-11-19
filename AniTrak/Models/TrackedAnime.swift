//
//  TrackedAnime.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//


import SwiftData
import Foundation

@Model
final class TrackedAnime {
    var TrackedAnimeId: Int
    var UserKey: Int
    var AnimeKey: Int
    var WatchStatusKey: Int
    var StartedWatching: Date
    var StoppedWatching: Date
    var LastWatched: Date
    var EpisodesWatched: Int
    var LastModified: Date
    var IsDeleted: Bool
    var Progress: Double
    var TimeWatched: Int
    
    
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

}
