//
//  FavoriteView.swift
//  Game List
//
//  Created by Wandi on 31/08/21.
//

import SwiftUI

struct FavoriteView: View {
//    @State var games: [Game] = []
    @EnvironmentObject var favorites: Favorites
//    print(state)
    
    var body: some View {
        NavigationView {
            List(favorites.games, id: \.self.id) { game in
                GameCard(game: game)
            }
            .navigationTitle("Favorite Games List")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
