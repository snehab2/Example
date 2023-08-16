//
//  QuestionOne.swift
//  Example
//
//  Created by scholar on 8/14/23.
//

import SwiftUI

struct QuestionOne: View {
    @EnvironmentObject var settings: GameSettings
    //@StateObject var settings = GameSettings()
    var body: some View {
        NavigationStack {
                    VStack {
                        // A button that writes to the environment settings
                        Button("Increase Score") {
                            settings.score += 1
                        }

                        NavigationLink {
                            ScoreView()
                        } label: {
                            Text("Show Detail View")
                        }
                    }
                    .frame(height: 200)
                }
                .environmentObject(settings)
        
    }
}

struct QuestionOne_Previews: PreviewProvider {
    static var previews: some View {
        QuestionOne().environmentObject(GameSettings())
    }
}
