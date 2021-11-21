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
            NavigationView{
            MainJoshView()
                    .navigationTitle("The Joshua Thompson")
            }
                    .tabItem{
                        Text("Bruh")
                    }
            FavAnimes()
                .tabItem {
                    Text("lol")
                    
                }
       DedicatedPuffSection()
                .tabItem{
                    Text("Cring")
                }
          PlaylistView()
                .tabItem{
                    Text("Music")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(song: .init())
    }
}
