//
//  HomeView.swift
//  Game List
//
//  Created by Wandi on 12/08/21.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    @State var games: [Game] = []
    
    var body: some View {
        NavigationView {
            List(games) { game in
                GameCard(game: game)
            }
            .onAppear() {
                Api().loadData { (games) in
                    self.games = games
                }
            }
            .navigationTitle("Game List")
        }
    }
}

struct GameCard: View {
    let game: Game
    
    var body: some View {
        NavigationLink(
            destination: GameDetailView(
                name: game.name,
                rating: game.rating,
                image: game.backgroundImage,
                ratings_count: game.ratingsCount,
                playtime: game.playtime,
                released: game.released,
                metacritic: game.metacritic,
                suggestionsCount: game.suggestionsCount,
                reviewsCount: game.reviewsCount
            ),
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
                            }
                        }
                    }
                }
            }
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
