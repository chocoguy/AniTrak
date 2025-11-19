//
//  FormNavbar.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftUI

struct FormNavbar: View {
    @Binding var selection: FormSwitcher?
    
    var body: some View {
        List(FormSwitcher.allCases, selection: $selection) { screen in
            NavigationLink(value: screen) {
                screen.label
            }
        }
        .navigationTitle("Anime")
//        .background(
//            // Choose ONE:
//            Color("SidebarBackgroundColor")
//            // Image("SidebarBackgroundImage").resizable().scaledToFill()
//        )
    }
}
