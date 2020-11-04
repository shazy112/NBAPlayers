//
//  PlayersList.swift
//  NBAPlayers
//
//  Created by Shiraz Ahmed Khan on 04/11/2020.
//

import SwiftUI

struct PlayersList: View {
  
    var body: some View {
        NavigationView {
        List(players) { currentPlayer in
            let destination = NBAPlayerDetail(player: currentPlayer)
            NavigationLink(destination: destination) {
                PlayerCell(player: currentPlayer).frame(height: 70)
            }
        }.navigationBarTitle(Text("NBA Players").foregroundColor(.gray))
        }
    }
}

struct PlayersList_Previews: PreviewProvider {
    static var previews: some View {
        PlayersList()
    }
}
