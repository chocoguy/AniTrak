//
//  FormContent.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftUI

struct FormContent: View {
    var screen: FormSwitcher?
    
    var body: some View {
        Group {
            if let screen {
                screen.destination
            } else {
                Text("Use the menu to navigate")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(
//            // Choose ONE:
//            Color("DetailBackgroundColor")
//            // Image("DetailBackgroundImage").resizable().scaledToFill()
//        )
//        .clipped()
    }
}
