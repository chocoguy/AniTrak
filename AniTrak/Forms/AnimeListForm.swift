//
//  AnimeListForm.swift
//  AniTrak
//
//  Created by Edgar Zarco on 10/26/25.
//

import SwiftUI

struct AnimeListForm: View {
    
    @Binding var path: NavigationPath
    
    private var samples: [Anime] {
        [
            Anime(
                AnimeId: 1, SeasonKey: 0, MediaTypeKey: 0, OriginalSourceKey: 0, AirDayKey: 0,
                Title: "Cardcaptor Sakura", Episodes: 72, Studio: "Madhouse",
                OnAir: Date(timeIntervalSince1970: 889164000), OffAir: Date(),
                Synopsis: "A sample synopsis.", MalScore: 8.0, MalRank: 500, Genre: "Fantasy",
                Poster: "https://cdn.myanimelist.net/images/anime/8/60781l.jpg", EpisodeTime: 24,
                LastSynced: Date(), PullCount: 0, LastModified: Date()
            ),
            Anime(
                AnimeId: 2, SeasonKey: 0, MediaTypeKey: 0, OriginalSourceKey: 0, AirDayKey: 0,
                Title: "Mahou Shoujo Madoka★Magica", Episodes: 12, Studio: "Shaft",
                OnAir: Date(timeIntervalSince1970: 1648771200), OffAir: Date(),
                Synopsis: "Another synopsis.", MalScore: 8.5, MalRank: 98, Genre: "Action",
                Poster: "https://cdn.myanimelist.net/images/anime/11/55225l.webp", EpisodeTime: 24,
                LastSynced: Date(), PullCount: 0, LastModified: Date()
            )
        ]
    }
    //
    var body: some View {
                    ScrollView {
                        HStack() {
                            ForEach(samples, id: \.AnimeId) { anime in
                                AnimeCard(displayedAnime: anime, path: $path)
                            }
                        }
                    }
                    .navigationTitle("AniTrak")
                    .navigationDestination(for: Anime.self) { anime in
                                AnimeDetailForm(selectedAnime: anime, path: $path)   // if detail needs to push further
                            }
            }
        
    }

