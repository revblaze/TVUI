//
//  Guide.swift
//  TVUI
//
//  Created by Justin Bush on 2021-10-05.
//

import SwiftUI

struct Guide: View {
  var body: some View {
    NavigationView {
      // to get the size of view, we are going to use the width later
      GeometryReader { p in
        ScrollView {
        VStack(alignment: .leading) {
          Image(Show.cnn.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: p.size.width, height: 200)
            .clipped()
          
          GuideRow()
            .frame(width: p.size.width)
        }
      }
      }
      .navigationTitle("Channels")
      
      GeometryReader { p in
      List {
        Section {
        GuideRow()
          //.listRowInsets(EdgeInsets(top: -0, leading: -20, bottom: 0, trailing: -20))
          //.listStyle(.plain)
          .ignoresSafeArea(.all)
          .listRowBackground(Color.clear)
        }
        .listRowInsets(EdgeInsets())
      }
      .navigationTitle("Channels")
      .edgesIgnoringSafeArea(.all)
      .ignoresSafeArea(.all)
    }
    //.accentColor(.primary)
    .edgesIgnoringSafeArea(.all)
    .ignoresSafeArea(.all)
  }
}

struct Guide_Previews: PreviewProvider {
  static var previews: some View {
    Guide()
  }
}
