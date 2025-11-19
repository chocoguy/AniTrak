//
//  MainForm.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftUI

struct MainForm: View {
    @State private var selection: FormSwitcher? = .trackedanime
    @State private var searchString: String = ""
    
    var body: some View {
        ZStack {
            // Choose ONE of the following backgrounds:

            // 1) Solid color background
            // Color(.systemBackground) // iOS/iPadOS
            // Color(nsColor: .windowBackgroundColor) // macOS
//            Color("MainBackgroundColor") // from Assets if you prefer a named color
//                .ignoresSafeArea()

            // 2) Image background
             Image("banner")
                 .resizable()
                 .scaledToFill()
                 .ignoresSafeArea()

            // Optional overlay for readability
            // Color.black.opacity(0.15).ignoresSafeArea()

            NavigationSplitView {
                FormNavbar(selection: $selection)
                    .background(Color.clear)
            } detail: {
                FormContent(screen: selection)
                    .background(Color.clear)
            }
            .searchable(text: $searchString, prompt: "Search")
            .toolbarBackground(Color.clear)
        }
    }
}
