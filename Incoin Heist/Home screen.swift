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
                Text("Home")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .padding()
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
                NavigationLink {
                    ContentView()
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 385)
                            .frame(height: 55)
                            .cornerRadius(10)
                        Text("Log Out")
                            .foregroundStyle(.white)
                            .bold()
                            .fontWeight(.heavy)
                    }
                }
            }
            .padding()
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    Home_screen()
}
