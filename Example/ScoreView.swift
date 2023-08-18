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
            VStack {
                Button("Increase Score") {
                    settings.score += 1
                }
                Text("Score: \(settings.score)")
            }
            .environmentObject(settings)
        }
        
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView().environmentObject(GameSettings())
    }
}
