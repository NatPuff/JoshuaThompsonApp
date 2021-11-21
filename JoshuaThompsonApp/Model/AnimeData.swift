//
//  AnimeData.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/19/21.
//

struct Anime: Decodable, Identifiable {
    let id: Int
    let Anime: String
    let Image: String
    let synopsis: String
}
