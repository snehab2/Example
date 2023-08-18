//
//  ScoreView.swift
//  Example
//
//  Created by scholar on 8/14/23.
//

import SwiftUI

struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings

    var body: some View {
        NavigationStack {
            VStack {
                Button("Increase Score") {
                    settings.score += 1
                }
                Text("Score: \(settings.score)")
                NavigationLink {
                    ScoreView()
                } label: {
                    Text("Show Content View")
                }
            }
            
        }
        .environmentObject(settings)
    }
        
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView().environmentObject(GameSettings())
    }
}
