//
//  GameCard.swift
//  Game List
//
//  Created by Wandi on 31/08/21.
//

import SwiftUI
import Kingfisher

struct GameCard: View {
    let game: Game
    
    var body: some View {
        NavigationLink(
            destination: GameDetailView(game: game),
            label: {
                HStack {
                    KFImage(URL(string: game.backgroundImage))
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .cornerRadius(5)
                    VStack (alignment: .leading) {
                        Text(game.name).font(.headline)
                        HStack {
                            HStack {
                                Text(String(game.released))
                                    .font(.subheadline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Spacer()
                            HStack {
                                HStack {
                                    Image(systemName: "star.fill").foregroundColor(.yellow)
                                    Text(String(game.rating)).font(.subheadline)
                                }
                                .padding(.trailing, 10)
                            }
                        }
                    }
                }
            }
        )
    }
}

struct GameCard_Previews: PreviewProvider {
    static let data = Game(id: 1, name: "game name", backgroundImage: "url", rating: 4.0, ratingsCount: 100, playtime: 10, released: "tanggal rilis", metacritic: 100, suggestionsCount: 200, reviewsCount: 200)
    
    static var previews: some View {
        GameCard(game: data)
    }
}
