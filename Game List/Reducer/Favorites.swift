//
//  Favorites.swift
//  Game List
//
//  Created by Wandi on 31/08/21.
//

import Foundation

class Favorites: ObservableObject {
    @Published var items = [String]()
    @Published var games = [Game]()
    
    func addItem(item: String) {
        items.append(item)
    }
    
    func addFavorite(game: Game) {
        games.append(game)
    }
    
    func removeItem() {
        items = []
    }
    
    func removeFavorite(id: Int) {
//        games.remove(at: 1)
        games = []
//        let list3 = englishBooks.filter{ ($0.nameOfBook.contains("English")) }
//        print(list3.map({"\($0.nameOfBook!)"}))
//        games = games.filter{ (!$0.id.contains(id)) }
    }
}
