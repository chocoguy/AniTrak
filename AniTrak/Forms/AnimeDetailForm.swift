//
//  AnimeDetailForm.swift
//  AniTrak
//
//  Created by Edgar Zarco on 2/22/26.
//

import SwiftUI
import SwiftData

struct AnimeDetailForm: View {
    
    @Environment(\.modelContext) var context
    
    @State public var selectedAnime: Anime
    @Binding var path: NavigationPath
    
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 2)
        {
            Text("Detail Form Placeholder")
        }.navigationTitle($selectedAnime.Title)
    }
}

#Preview("AnimeDetailForm") {
    // Provide a temporary in-memory model container for SwiftData previews if available
    // and construct the view with sample data.
    struct PreviewHost: View {
        @State private var path = NavigationPath()
        @State private var anime =             Anime(
            AnimeId: 2, SeasonKey: 0, MediaTypeKey: 0, OriginalSourceKey: 0, AirDayKey: 0,
            Title: "Mahou Shoujo Madoka★Magica", Episodes: 12, Studio: "Shaft",
            OnAir: Date(timeIntervalSince1970: 1648771200), OffAir: Date(),
            Synopsis: "Another synopsis.", MalScore: 8.5, MalRank: 98, Genre: "Action",
            Poster: "https://cdn.myanimelist.net/images/anime/11/55225l.webp", EpisodeTime: 24,
            LastSynced: Date(), PullCount: 0, LastModified: Date()
        )
        var body: some View {
            NavigationStack(path: $path) {
                AnimeDetailForm(selectedAnime: anime, path: $path)
            }
        }
    }

    return PreviewHost()
        .modelContainer(for: Anime.self, inMemory: true)
}
