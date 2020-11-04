//
//  PlayerCell.swift
//  NBAPlayers
//
//  Created by Shiraz Ahmed Khan on 04/11/2020.
//

import SwiftUI

struct PlayerCell: View {
    var player: Player
    var body: some View {
        HStack {
            Image(player.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).background((/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)).foregroundColor(.yellow).overlay(Circle().stroke(lineWidth: 4).foregroundColor(.white)).shadow(radius: 12)
            Text(player.name)
            Spacer()
        }
    }
}

struct PlayerCell_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCell(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}
