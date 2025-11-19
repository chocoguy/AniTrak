//
//  AniTrakSplitView.swift
//  AniTrak
//
//  Created by Edgar Zarco on 10/26/25.
//

import SwiftUI


struct AniTrackSplitView: View {

    @State private var prefCol: NavigationSplitViewColumn = .detail
    @State private var showMe: Bool = false
    
    var body: some View {
        Text("Sample")
        
//        NavigationSplitView(preferredCompactColumn: $prefCol) {
//            List {
//                Section {
//                    NavigationLink(value: 1) {
//                        Label("Home", systemImage: "house")
//                    }
//                }
//            }
//        } detail: {
//            NavigationStack()
//        }
        
        NavigationStack {
            NavigationLink {
                AnimeListForm()
            } label : {
                Text("Home")
            }
            
            VStack{
                Button("Show") {
                    showMe = true
                }
            }.navigationDestination(isPresented: $showMe) {
                AnimeListForm()
            }
            
        }
        
        
    }
}
