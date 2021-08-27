//
//  GameDetailView.swift
//  Game List
//
//  Created by Wandi on 12/08/21.
//

import SwiftUI
import Kingfisher

struct GameDetailView: View {
    let name: String
    let rating: Float
    let image: String
    let ratings_count: Int
    let playtime: Int
    let released: String
    let metacritic: Int
    let suggestionsCount: Int
    let reviewsCount: Int
    
    var body: some View {
        VStack {
            KFImage(URL(string: image))
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            VStack (alignment: .trailing) {
                HStack {
                    Spacer()
                    Text(name)
                        .fontWeight(Font.Weight.bold)
                        .font(.system(size: 27))
                        .padding(.bottom, 10)
                }
                HStack {
                    Text("Rating:")
                    Text(String(rating))
                }
                HStack {
                    Text("Rating Count:")
                    Text(String(ratings_count))
                }
                HStack {
                    Text("Playtime:")
                    Text(String(playtime))
                    Text("Hours")
                }
                HStack {
                    Text("Rating:")
                    Text(String(rating))
                }
                HStack {
                    Text("Rating Count:")
                    Text(String(ratings_count))
                }
                HStack {
                    Text("Playtime:")
                    Text(String(playtime))
                }
            }
            .padding(.trailing, 25)
            .padding(.bottom, 35)
        }
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GameDetailView(
            name: "Game Name",
            rating: 4.6,
            image: "https://media.rawg.io/media/games/456/456dea5e1c7e3cd07060c14e96612001.jpg",
            ratings_count: 100,
            playtime: 70,
            released: " 12312",
            metacritic: 10,
            suggestionsCount: 11,
            reviewsCount: 12
        )
    }
}
