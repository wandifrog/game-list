//
//  Game_ListApp.swift
//  Game List
//
//  Created by Wandi on 10/08/21.
//

import SwiftUI

@main
struct Game_ListApp: App {
    @StateObject var state = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
//                .environmentObject(state)
        }
    }
}
