//
//  ContentView.swift
//  NBAPlayers
//
//  Created by Shiraz Ahmed Khan on 03/11/2020.
//

import SwiftUI

struct NBAPlayerDetail: View {
    var player: Player?
    var body: some View {
        PlayerDetailView(player: player)
    }
}

struct NBAPlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        NBAPlayerDetail()
    }
}
struct PlayerDetailView: View {
    var player: Player?
    var body: some View {
        ScrollView {
            VStack {
                if let myPlayer = player {
                    Image(player?.team.imageName ?? "").resizable().aspectRatio(contentMode: .fit)
                    Image(myPlayer.imageName).clipShape(Circle()).background(Circle()).foregroundColor(.white).overlay(Circle().stroke(lineWidth: 4).foregroundColor(.white)).offset(x: 0, y: -90).padding(.bottom, -70).shadow(radius: 15)
                    Text(myPlayer.name).font(.largeTitle).fontWeight(.heavy)
                    Spacer(minLength: 30)
                    PlayerDetailStatsView(statName: "Age", statValue: String(myPlayer.age))
                    PlayerDetailStatsView(statName: "Weight", statValue: String(myPlayer.weight))
                    PlayerDetailStatsView(statName: "Height", statValue: String(myPlayer.height))
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}


