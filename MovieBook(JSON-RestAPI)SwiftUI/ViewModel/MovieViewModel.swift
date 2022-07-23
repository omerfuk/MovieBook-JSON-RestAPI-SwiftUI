//
//  MovieViewModel.swift
//  MovieBook(JSON-RestAPI)SwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 23.07.2022.
//

import SwiftUI

class MovieViewModel: ObservableObject {
    
    @Published var movies: [Search] = []
    
    var urlString = "https://www.omdbapi.com/?s=titan&apikey=e88eb61d"
    
    func fetchData() {
        
        guard let url = URL(string: urlString) else{return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else{return}
            
            do{
                
                let movies = try JSONDecoder().decode(Movie.self, from: data)
                print("Data Fetched")
                DispatchQueue.main.async {
                    self.movies = movies.Search
                    
                    
                }
            }catch{
                print(error)
            }
        }
        .resume()
        
    }
    
    
}
