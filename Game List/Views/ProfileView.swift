//
//  ProfileView.swift
//  Game List
//
//  Created by Wandi on 12/08/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("profile-picture")
                .resizable()
                .frame(width: 125, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
                .padding()
            Text("Wandi").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("wandifrog@gmail.com")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
