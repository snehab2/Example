//
//  ContentView.swift
//  Example
//
//  Created by scholar on 8/9/23.
//

import SwiftUI
class GameSettings: ObservableObject {
    @Published var score = 0
}


struct ContentView: View {
    @StateObject var settings = GameSettings()
    @EnvironmentObject var settings1: GameSettings
    var body: some View {
        NavigationStack {
                    VStack {
                        // A button that writes to the environment settings
                        Button("Increase Score") {
                            settings.score += 1
                        }
                        NavigationLink(destination: QuestionOne()) {
                            Text("Next question!")
                        }
                        Text("Score: \(settings1.score)")

                        
                    }
                    .frame(height: 200)
                }
                .environmentObject(settings)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GameSettings())
    }
}
