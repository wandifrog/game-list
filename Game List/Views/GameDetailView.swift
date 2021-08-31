//
//  GameDetailView.swift
//  Game List
//
//  Created by Wandi on 12/08/21.
//

import SwiftUI
import Kingfisher

struct GameDetailView: View {
    let game: Game
    @EnvironmentObject var state: Order
    
    var body: some View {
        VStack {
            KFImage(URL(string: game.backgroundImage))
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack (alignment: .trailing) {
                HStack (spacing: 22) {
                    Button(action: {
                        print("Share: \(game.name)")
                        state.addItem(item: game.name)
                    },
                    label: {
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 21))
                    })
                    Button(action: {
                        print("\(game)")
                    },
                    label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                            .font(.system(size: 25))
                    })
                }
                .padding(.top, 7)
                Spacer()
                HStack {
                    Spacer()
                    Text(game.name)
                        .fontWeight(Font.Weight.bold)
                        .font(.system(size: 27))
                        .padding(.bottom, 10)
                        .fixedSize(horizontal: false, vertical: true)
                }
                HStack {
                    Text("Rating:")
                    Text("\(String(game.rating)) / 5.00").font(.callout)
                }
                HStack {
                    Text("Rating Count:")
                    Text(String(game.ratingsCount)).font(.callout)
                }
                HStack {
                    Text("Playtime:")
                    Text(String(game.playtime)).font(.callout)
                    Text("Hours").font(.callout)
                }
                HStack {
                    Text("Released:")
                    Text(game.released).font(.callout)
                }
                HStack {
                    Text("Suggustion Count:")
                    Text(String(game.suggestionsCount)).font(.callout)
                }
                HStack {
                    Text("Metacritics:")
                    Text(String(game.metacritic)).font(.callout)
                }
                HStack {
                    Text("Review Count:")
                    Text(String(game.reviewsCount)).font(.callout)
                }
            }
            .padding(.trailing, 25)
            .padding(.bottom, 35)
        }
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static let data = Game(id: 1, name: "game name", backgroundImage: "url", rating: 4.0, ratingsCount: 100, playtime: 10, released: "tanggal rilis", metacritic: 100, suggestionsCount: 200, reviewsCount: 200)
    
    static var previews: some View {
        GameDetailView(game: data)
    }
}
