//
//  AnimeNavStack.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftUI

struct AnimeNavStack: View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
                
        NavigationStack(path: $path) {
            AnimeListForm(path: $path)
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
