//
//  ContentView.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/19/21.
//

import SwiftUI

struct ContentView: View {
    let song: Song
    var body: some View {
        TabView{
            
            MainJoshView()
                    .tabItem{
                        Text("Overview")
                            .font(.title3)
                    }
            FavAnimes()
                .tabItem {
                    Text("Anime")
                        .bold()
                    
                }
       DedicatedPuffSection()
                .tabItem{
                    Text("Jigglypuff")
                        .bold()
                }
          PlaylistView()
                .tabItem{
                    Text("Music")
                        .bold()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(song: .init())
    }
}
