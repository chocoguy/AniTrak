//
//  FormSwitcher.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import Foundation
import SwiftUI

enum FormSwitcher: Codable, Hashable, Identifiable, CaseIterable {
    case trackedanime
    case backlog
    case stats
    case settings
    
    var id: FormSwitcher {self}
}


extension FormSwitcher {
    @ViewBuilder
    var label: some View {
        switch self {
        case .trackedanime:
            Label("Anime", systemImage: "play.display")
        case .backlog:
            Label("Backlog", systemImage: "magazine.fill")
        case .stats:
            Label("Stats", systemImage: "chart.bar.fill")
        case .settings:
            Label("Settings", systemImage: "gearshape.fill")
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .trackedanime:
            AnimeNavStack()
        case .backlog:
            Text("Backlog Nav Stack")
        case .stats:
            Text("Stats Nav Stack")
        case .settings:
            Text("Settings Nav Stack")
        }
    }
    
}
