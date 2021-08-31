//
//  ContentView.swift
//  Game List
//
//  Created by Wandi on 10/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Games")
                }
            FavoriteView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
