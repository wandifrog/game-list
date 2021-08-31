//
//  Favorites.swift
//  Game List
//
//  Created by Wandi on 31/08/21.
//

import Foundation

class Order: ObservableObject {
    @Published var items = [String]()
    @Published var favorites = [Game]()
    
    func addItem(item: String) {
        items.append(item)
    }
    
}
