//
//  SongRow.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/21/21.
//

import SwiftUI

struct SongRow: View {
    let song: Song
    var body: some View {
        NavigationLink(destination: DetailViewSong(song: song)){
        HStack{
            Image(song.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text(song.title + " - " + song.anime)
        }
        }
    }
}

struct PlaylistView: View {
    var playlist = SongPlaylist()
    var body: some View{
        NavigationView{
        List(playlist.songs) { song in
            SongRow(song: song)
                .navigationTitle("Josh's Music")
        }
        }
    }
}



struct SongRow_Previews: PreviewProvider {
    static var previews: some View {
        let playlist = SongPlaylist()
        
        NavigationView{
        PlaylistView()
            SongRow(song: playlist.songs.first!)
        }
    
    }
}


