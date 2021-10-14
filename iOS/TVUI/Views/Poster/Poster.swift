//
//  Poster.swift
//  TVUI
//
//  Created by Justin Bush on 2021-10-05.
//

import SwiftUI

struct Poster: View {
  //var width: CGFloat
  //var height: CGFloat
  var show: Show
  //var url: String
  func posterName(forShow: Show) -> String {
    "\(forShow.imageName)-poster"
  }
  
  var body: some View {
//    AsyncImage(url: URL(string: url)) { image in
//      image
//        .resizable()
//        .frame(width: width, height: height)
//        .cornerRadius(10)
//    } placeholder: {
//      LoadingView(media: .poster, width: width, height: height)
//        .frame(width: width, height: height)
//    }
//    .shadow(radius: 5)
    Image(show.imageName)
      .resizable()
      .cornerRadius(10)
      .shadow(radius: 5)
  }
}

struct Poster_Previews: PreviewProvider {
  //static let modelData = ModelData()
  static var previews: some View {
    //Poster(width: 200, height: 300, url: modelData.movies[0].posterURL)
    Poster(show: .cnbc)
  }
}
