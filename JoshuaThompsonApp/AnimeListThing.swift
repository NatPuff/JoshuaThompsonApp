//
//  AnimeListThing.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/19/21.
//

import SwiftUI

struct AnimeListThing: View {
    let animeModel: AnimeViewModel
    let data: Anime
    init(animeModel: AnimeViewModel, data: Anime){
        self.animeModel = animeModel
        self.data = data
    }
    var body: some View {
        NavigationLink(destination: DetailAnimeView(animeModel: animeModel, data: data)){
        HStack{
            Image(data.Image)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text(data.Anime)
        }
        }
    }
}

//struct AnimeListThing_Previews: PreviewProvider {
//    static var previews: some View {
//        AnimeListThing()
//    }
//}
