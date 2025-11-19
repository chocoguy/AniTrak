//
//  AnimeNavStack.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftUI

struct AnimeNavStack: View {
    var body: some View {
        NavigationStack {
            AnimeListForm()
        }.navigationTitle(Text("Anime"))
            .toolbar {
                ToolbarItem() {
                    Button(){
                        
                    } label: {
                        Image(systemName: "checkmark")
                    }
                }
            }
    }
}
