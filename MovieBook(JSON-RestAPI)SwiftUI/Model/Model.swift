//
//  Model.swift
//  MovieBook(JSON-RestAPI)SwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 23.07.2022.
//

import SwiftUI

struct Movie: Identifiable, Codable, Hashable {
    let id = UUID()
    let Search: [Search]
    
}

struct Search:Identifiable, Codable, Hashable {
    let id = UUID()
    let Title:String
    let Year: String
    let imdbID: String
    let Poster: String
}


