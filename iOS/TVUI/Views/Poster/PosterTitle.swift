//
//  PosterTitle.swift
//  TVUI
//
//  Created by Justin Bush on 2021-10-05.
//

import SwiftUI

struct PosterTitle: View {
  var show: Show
  
  var body: some View {
    VStack(alignment: .leading) {
//      Poster(width: 134, height: 201, url: movie.posterURL)
      Poster(show: show)
        .frame(width: 134, height: 201)
      Text(show.name)
        .foregroundColor(.primary)
        .font(.caption)
    }
    .padding(.leading, 15)
    .padding(.trailing, 15)
  }
}

struct PosterTitle_Previews: PreviewProvider {
  static var previews: some View {
    PosterTitle(show: .cnbc)
  }
}
