//
//  Song.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/21/21.
//

import Foundation


class Song: ObservableObject{
    let id = UUID()
    let title: String
    let anime: String
    let image: String
    init(title: String = "Grandeur", anime: String = "Anime", image: String = "Grandeur"){
        self.title = title
        self.anime = anime
        self.image = image
    }

}

struct SongPlaylist {
    let songs = [Song(title: "Grandeur", anime: "BlackClover", image: "Grandeur"), Song(title: "Black Catcher", anime: "BlackClover", image: "BlackCatcher"), Song(title: "Unravel", anime: "Tokyo Ghoul", image: "Unravel")]
}


extension Song: Hashable, Identifiable {
    func hash(into hasher: inout Hasher){
      hasher.combine(id)
    }
}

extension Song: Equatable {
    static func == (lhs: Song, rhs: Song) -> Bool {
        lhs === rhs
    }
}
