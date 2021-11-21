//
//  DetailAnimeView.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/21/21.
//

import SwiftUI

struct DetailAnimeView: View {
    let animeModel: AnimeViewModel
    let data: Anime
    init(animeModel: AnimeViewModel, data: Anime){
        self.animeModel = animeModel
        self.data = data
    }
    var body: some View {
        VStack{
        Text(data.Anime)
                .fontWeight(.bold)
                .font(.title)
        Image(data.Image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .padding()
            ScrollView{
        Text(data.synopsis)
                .padding()
            }
            
        }
    }
}

//struct DetailAnimeView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailAnimeView(animeModel: animeModel, data: data)
//    }
//}
