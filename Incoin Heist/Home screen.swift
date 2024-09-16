//
//  Home screen.swift
//  Incoin Heist
//
//  Created by Adam Zafir on 9/13/24.
//


import SwiftUI
import SwiftPersistence

// homescreen
struct Home_screen: View {
    @Persistent("level") var level = 0

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Rectangle()
                        .frame(width: 160, height: 170)
                        .cornerRadius(10)
                    
                    NavigationLink(destination: LevelView()) {
                        ZStack {
                            Rectangle()
                                .frame(width: 160, height: 170)
                                .cornerRadius(10)
                            
                            VStack {
                                Text("Level:")
                                    .bold()
                                    .fontWeight(.heavy)
                                    .foregroundStyle(.white)
                                Text("\(level)")
                                    .bold()
                                    .fontWeight(.heavy)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 50))
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle(Text("Home"))
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    Home_screen()
}
