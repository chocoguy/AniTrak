//
//  AnimeCard.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/18/25.
//

import SwiftUI
import SwiftData

struct AnimeCard: View {
    
    @Environment(\.modelContext) var context
    
    @State public var displayedAnime: Anime
    @Binding var path: NavigationPath
    
    var body: some View {
        HStack(alignment: .top, spacing: 2) {
            HStack {
                AsyncImage(url: URL(string: displayedAnime.Poster)) { image in
                    image.resizable()
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 110)
                        .shadow(color: .black.opacity(0.4), radius: 6, x: 0, y: 2)
                } placeholder: {
                    ProgressView()
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text(displayedAnime.Title)
                        .bold()
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                        .minimumScaleFactor(0.7)
                        .truncationMode(.tail)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineLimit(1)
                    Text("Spring 1998")
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                    Text("Ep 45 / 72")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.secondary)
                    Text("Watching")
                        .foregroundStyle(.green)
                        .font(.system(size: 14, weight: .medium))
                }
                Spacer()
                VStack() {
                    Button(action: {
                        path.append(displayedAnime)
                    }) {
                        Spacer()
                        Text("Detail >")
                        Spacer()
                    }
                }
            }
            .padding(.vertical, 4) // inner padding inside the glass container
            //        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            //
            //        .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 4) // optional drop shadow
            .frame(width: 400, height: 100)
            .padding(16) // outer padding from surrounding content
            .glassEffect(.regular, in: .rect(cornerRadius: 12))
            .cornerRadius(2)
        }
    }
    
}

#Preview("AnimeCard Sample") {
//    // Create a temporary in-memory model container/context for previews if Anime uses SwiftData
//    // If Anime is not a SwiftData model, this context will be unused.
//    let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
//    let container = try! ModelContainer(for: Anime.self, configurations: configuration)
//    let context = container.mainContext
//
//    // Provide a sample Anime instance for the preview
//    let sample = Anime(
//        AnimeId: 1, SeasonKey: 0, MediaTypeKey: 0, OriginalSourceKey: 0, AirDayKey: 0,
//        Title: "Cardcaptor Sakura", Episodes: 72, Studio: "Madhouse",
//        OnAir: Date(timeIntervalSince1970: 889164000), OffAir: Date(),
//        Synopsis: "A sample synopsis.", MalScore: 8.0, MalRank: 500, Genre: "Fantasy",
//        Poster: "https://cdn.myanimelist.net/images/anime/8/60781l.jpg", EpisodeTime: 24,
//        LastSynced: Date(), PullCount: 0, LastModified: Date()
//    )
//
//    AnimeCard(displayedAnime: sample)
//        .modelContainer(container)
//        .padding()
//        .previewLayout(.sizeThatFits)
}

