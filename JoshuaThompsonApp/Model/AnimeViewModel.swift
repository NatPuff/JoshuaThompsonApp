//
//  AnimeViewModel.swift
//  JoshuaThompsonApp
//
//  Created by Cesar Pacheco on 11/19/21.
//

import SwiftUI

class AnimeViewModel: ObservableObject {
    @Published var anime = [Anime]()
    
    let apiURL = "https://firebasestorage.googleapis.com/v0/b/joshanimelol.appspot.com/o/joshanimelol-default-rtdb-export.json?alt=media&token=48cf6e6b-5a93-4794-8f89-24b127c1e4ae"
    
    init(){
        fetchAnimeData()
    }
    func fetchAnimeData(){
        guard let url = URL(string: apiURL) else {return}
        let session = URLSession.shared
        let task = session.dataTask(with: url) {(data, response, error) in
            guard let cleanData = data?.parseData(removeString: "null,") else {return}
            
            DispatchQueue.main.async {
                do{
                    let anime = try JSONDecoder().decode([Anime].self, from: cleanData)
                    self.anime = anime
                } catch{
                    print("error msg:", error)
                }
            }
        }
        task.resume()
    }
}

extension Data{
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let ParseDataString = dataAsString?
            .replacingOccurrences(of: string, with: "")
        guard let data = ParseDataString?.data(using: .utf8)
        else {return nil}
        return data
    }
}
