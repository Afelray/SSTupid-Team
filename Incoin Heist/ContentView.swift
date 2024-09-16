//
//  ContentView.swift
//  Incoin Heist
//
//  Created by Adam Zafir on 9/13/24.
//

import SwiftUI
struct ContentView: View {
    @State var username: String = ""
    @State var showRect: Bool = false
    @State var usercheck2: Bool = false
    @State var textfieldText: String = "Username..."
    var body: some View {
       NavigationStack {
            VStack {
                if !showRect {
                        Text("Login")
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                            .padding()
                        
                    
                    TextField("\(textfieldText)", text: $username)
                        .padding()
                        .background(Color.gray.opacity(0.3).cornerRadius(10))
                        .padding()
                    
                    Button{
                        usernamecheck()
                        if usercheck2 {
                            withAnimation {
                                showRect.toggle()
                            }
                        }
                    } label: {
                        Text("I AM READY")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                Spacer()
                
                
                if showRect {
                    NavigationLink {
                        Home_screen()
                    } label: {
                        ZStack {                        RoundedRectangle(cornerRadius: 30)
                                .fill(.blue)
                                .frame(height:  UIScreen.main.bounds.size.height)
                                .edgesIgnoringSafeArea(.top)
                            VStack {
                                Text("Lets Get Started")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 40))
                                    .padding()
                                Text("Tap Anywhere to continue")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .padding()
                            }
                        }
                    }
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut, value: showRect)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
        }
    func usernamecheck() -> Bool {
        if username.count >= 5 {
            usercheck2 = true
            return true
        } else {
            usercheck2 = false
            username = ""
            textfieldText = "Username must be at least 5 characters"
            return false
        }
    }
    }

#Preview {
ContentView()
}
