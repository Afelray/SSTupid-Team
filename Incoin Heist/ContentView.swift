//
//  ContentView.swift
//  Incoin Heist
//
//  Created by Adam Zafir on 9/13/24.
//

import SwiftUI
import Lottie
import SwiftPersistence

// homescreen
struct ContentView: View {
    @Persistent("level") var level = 0

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Rectangle()
                        .frame(width: 160, height: 170)
                        .cornerRadius(10)
                    
                    NavigationLink(destination: Text("still blank -_-")) {
                        ZStack {
                            Rectangle()
                                .frame(width: 160, height: 170)
                                .cornerRadius(10)
                            
                            VStack {
                                Text("Level:")
                                    .bold()
                                    .fontWeight(.heavy)
                                    .foregroundStyle(.black)
                                Text("\(level)")
                                    .bold()
                                    .fontWeight(.heavy)
                                    .foregroundStyle(.black)
                                    .font(.system(size: 50))
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
