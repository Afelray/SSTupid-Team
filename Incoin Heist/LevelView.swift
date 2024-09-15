//
//  LevelView.swift
//  Incoin Heist
//
//  Created by Dev Account on 9/15/24.
//

import SwiftUI

struct LevelView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                List {
                    NavigationLink(destination: Text("Still blank")) {
                        VStack {
                            HStack {
                                Text("Level 1")
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                Text("Where did the heist occur")
                                Spacer()
                            }
                        }
                    }
                    NavigationLink(destination: Text("Still blank")) {
                        VStack {
                            HStack {
                                Text("Level 2")
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                Text("When did the heist occur")
                                Spacer()
                            }
                        }
                    }
                    NavigationLink(destination: Text("Still blank")) {
                        VStack {
                            HStack {
                                Text("Level 3")
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                Text("Who is tall Avyan's Accomplice")
                                Spacer()
                            }
                        }
                    }
                    NavigationLink(destination: Text("Still blank")) {
                        VStack {
                            HStack {
                                Text("Level 4")
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                Text("How did Tall Avyan steal the Incoin")
                                Spacer()
                            }
                        }
                    }
                                NavigationLink(destination: Text("Still blank")) {
                                    VStack {
                                        HStack {
                                            Text("Level 5")
                                                .bold()
                                            Spacer()
                                        }
                                        HStack {
                                            Text("How did Tall Avyan get away from the vault location")
                                            Spacer()
                                        }
                                    }
                                    }
                    NavigationLink(destination: Text("Still blank")) {
                        VStack {
                            HStack {
                                Text("Level 6")
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                Text("Where is Tall Avyan hiding now")
                                Spacer()
                            }
                        }
                        }
                    NavigationLink(destination: Text("Still blank")) {
                        VStack {
                            HStack {
                                Text("Level 6")
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                Text("Where is the Incoin now")
                                Spacer()
                            }
                        }
                        }
                                }
                NavigationLink {
                    Home_screen()
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 385)
                            .frame(height: 55)
                            .cornerRadius(10)
                        Text("Home")
                            .foregroundStyle(.white)
                            .bold()
                            .fontWeight(.heavy)
                    }
                }
            }
                        }
                        .navigationTitle(Text("Levels:"))
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarBackButtonHidden(true)
                    }
                }
 #Preview {
LevelView()
}

