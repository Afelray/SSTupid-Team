//
//  GeminiView.swift
//  Incoin Heist
//
//  Created by Adam Zafir on 9/17/24.
//

import SwiftUI
import GoogleGenerativeAI
struct GeminiView: View {
    let model = GenerativeModel(name: "gemini-pro", apiKey: APIKey.default)
    @State var textInput: String = ""
    @State var aiResponse: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                Image("gemini")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding()
                ScrollView {
                    Text(aiResponse)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                        .padding()
                        .multilineTextAlignment(.center)
                }
                Spacer()
                HStack {
                    TextField("Enter a message", text: $textInput)
                        .padding()
                        .background(Color.gray.opacity(0.3).cornerRadius(10))
                        .padding()
                    Button {
                        sendMessage()
                    } label: {
                        Image(systemName: "paperplane.fill")
                            .padding()
                    }
                }
            }
        }
    }
    
    func sendMessage() {
          aiResponse = "Loading..."
          Task {
              do {
                  let response = try await model.generateContent(textInput)
                  guard let text = response.text else {
                      aiResponse = "Sorry, I could not process that. Please try again."
                      return
                  }
                  aiResponse = text
                  textInput = ""
              } catch {
                  aiResponse = "Something went wrong! \n\(error.localizedDescription)"
              }
          }
      }
    }
#Preview {
    GeminiView()
}
