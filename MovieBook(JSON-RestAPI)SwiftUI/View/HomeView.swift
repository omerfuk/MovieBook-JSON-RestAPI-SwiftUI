//
//  ContentView.swift
//  MovieBook(JSON-RestAPI)SwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 23.07.2022.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    
    @StateObject var viewModel =  MovieViewModel()
    
    var body: some View {
        
        NavigationView{
            List(viewModel.movies){movie in

                ListRowView(imageURL: movie.Poster, movieTitle: movie.Title)

            }
            .navigationTitle("Movies")
            .onAppear {
                viewModel.fetchData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
