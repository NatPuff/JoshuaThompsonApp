//
//  FavAnimes.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/19/21.
//

import SwiftUI

struct FavAnimes: View {
    private let gridItems = [GridItem(.flexible())]
    @ObservedObject var animeModel = AnimeViewModel()
    var body: some View {
        NavigationView{
            List(animeModel.anime) { anime in AnimeListThing(animeModel: animeModel, data: anime)}
            }
         
        }
    }


struct FavAnimes_Previews: PreviewProvider {
    static var previews: some View {
        FavAnimes()
}
}
