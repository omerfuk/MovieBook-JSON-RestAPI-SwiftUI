//
//  ListRowView.swift
//  MovieBook(JSON-RestAPI)SwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 23.07.2022.
//

import SwiftUI
import Kingfisher

struct ListRowView: View {
    
    var imageURL: String
    var movieTitle: String
    
    var body: some View {
        HStack{
            KFImage(URL(string: imageURL))
                .resizable()
                .frame(width: 150, height: 150)
                .background(.gray)
                .cornerRadius(15)
            
            Text(movieTitle)
                .bold()
                .font(.title3)
                .padding()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(imageURL: "", movieTitle: "")
    }
}
