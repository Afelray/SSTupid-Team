//
//  ContentView.swift
//  Incoin Heist
//
//  Created by Adam Zafir on 9/13/24.
//

import SwiftUI
struct ContentView: View {
    @State var isanimated: Bool = false
    var body: some View {
        NavigationStack {
                    ZStack {                        RoundedRectangle(cornerRadius: 30)
                            .fill(.blue)
                            .frame(height:  UIScreen.main.bounds.size.height)
                            .edgesIgnoringSafeArea(.top)
                        VStack {
                            Button {
                            } label : {
                                Text("Lets Get Started")
                                    .foregroundStyle(Color.red)
                                    .fontWeight(.bold)
                                    .font(.system(size: 60))
                                    .padding()
                                
                            }
                        }
                    }
            }
        }
    }

#Preview {
ContentView()
}
