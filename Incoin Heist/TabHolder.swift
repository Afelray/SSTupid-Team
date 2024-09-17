//
//  TabHolder.swift
//  Incoin Heist
//
//  Created by Adam Zafir on 9/17/24.
//

import SwiftUI

struct TabHolder: View {
    var body: some View {
        NavigationStack {
            TabView {
                Home_screen()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                            .font(.headline)
                    }
                GeminiView()
                    .tabItem {
                        Image(systemName: "wand.and.stars.inverse")
                        Text("Gemini")
                            .font(.headline)
                    }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TabHolder()
}
