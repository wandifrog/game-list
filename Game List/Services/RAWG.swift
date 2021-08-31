//
//  RAWGServices.swift
//  Game List
//
//  Created by Wandi on 30/08/21.
//

import Foundation

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
