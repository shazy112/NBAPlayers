//
//  PlayerDetailStatsView.swift
//  NBAPlayers
//
//  Created by Shiraz Ahmed Khan on 04/11/2020.
//

import SwiftUI

struct PlayerDetailStatsView: View {
    var statName: String?
    var statValue: String?
    var body: some View {
        HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            Text("\(statName ?? ""):").font(.system(size: 45)).fontWeight(.bold).padding(.leading, 30)
            Text("\(statValue ?? "")").font(.system(size: 45)).fontWeight(.light).padding(.trailing, 10)
            Spacer()
        })
    }
}

struct PlayerDetailStatsView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailStatsView()
    }
}
