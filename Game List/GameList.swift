//
//  GameList.swift
//  Game List
//
//  Created by Wandi on 19/08/21.
//

import Foundation

struct GameList: Codable {
    var results: [Game]
}

struct Game: Codable, Identifiable {
    let id: Int
    let name: String
    let backgroundImage: String
    let rating: Float
    let ratingsCount: Int
    let playtime: Int
    let released: String
    let metacritic: Int
    let suggestionsCount: Int
    let reviewsCount: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case backgroundImage = "background_image"
        case rating
        case ratingsCount = "ratings_count"
        case playtime
        case released
        case metacritic
        case suggestionsCount = "suggestions_count"
        case reviewsCount = "reviews_count"
    }
}

class Api: ObservableObject{
    func loadData(completion:@escaping ([Game]) -> ()) {
        guard let url = URL(string: "https://api.rawg.io/api/games?key=39d32531daf14240adcb97ad958efc00") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            let gameList = try! JSONDecoder().decode(GameList.self, from: data!)
            print(gameList.results)
            DispatchQueue.main.async {
                completion(gameList.results)
            }
        }.resume()
    }
}
