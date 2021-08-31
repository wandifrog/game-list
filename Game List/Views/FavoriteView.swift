//
//  FavoriteView.swift
//  Game List
//
//  Created by Wandi on 31/08/21.
//

import SwiftUI

struct FavoriteView: View {
//    @State var games: [Game] = []
    @EnvironmentObject var state: Order
//    print(state)
    
    var body: some View {
        NavigationView {
            Text("hai hai hai hello all")
            
            List(self.state.items, id: \.self) { item in
                Text(item)
            }
            
//            List(games) { game in
//                GameCard(game: game)
//            }
//            .onAppear() {
//                Api().loadData { (games) in
//                    self.games = games
//                }
//            }
            .navigationTitle("Favorite Games List")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
