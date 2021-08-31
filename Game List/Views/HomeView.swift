//
//  HomeView.swift
//  Game List
//
//  Created by Wandi on 12/08/21.
//

import SwiftUI

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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
