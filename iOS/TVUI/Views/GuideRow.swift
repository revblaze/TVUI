//
//  GuideRow.swift
//  TVUI
//
//  Created by Justin Bush on 2021-10-05.
//

import SwiftUI

struct GuideRow: View {
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        Text("Channels")
          .font(.headline)
        
        Spacer()
        
        NavigationLink(destination: ContentView()) {
          Text("See More")
            .foregroundColor(.blue)
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
      }
      .padding(.horizontal).padding(.top)
      .offset(y: 10)
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(alignment: .top, spacing: -15) {
          //ForEach(show) { movie in
          ForEach(Show.allCases) { channel in
          //ForEach(Channels.all) { channel in
            NavigationLink(destination: ContentView()) {
              PosterTitle(show: channel)
            }
          }
        }
        .frame(height: 280)
      }
//      ScrollView(.horizontal, showsIndicators: false) {
//        HStack(alignment: .top, spacing: -15) {
//          ForEach(items) { movie in
//            NavigationLink(destination: MovieDetail(movie: movie)) {
//              PosterTitle(movie: movie)
//            }
//          }
//        }
//        .frame(height: 280)
//      }
    }
  }
}

struct GuideRow_Previews: PreviewProvider {
  static var previews: some View {
    GuideRow()
  }
}
