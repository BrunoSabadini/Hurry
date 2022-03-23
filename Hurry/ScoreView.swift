//
//  ScoreView.swift
//  Hurry
//
//  Created by Bruno Sabadini on 22/03/22.
//

import SwiftUI

struct ScoreView: View {
    
    var winner: String
    
    var body: some View {
        
        Text("Congratulations\n\(winner)\nYou Won!")
            .font(.title)
    }
}


struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(winner: "Player 1")
    }
}
