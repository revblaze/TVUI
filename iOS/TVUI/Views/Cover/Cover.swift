//
//  Cover.swift
//  TVUI
//
//  Created by Justin Bush on 2021-10-05.
//

import SwiftUI

struct Cover: View {
  var show: Show
  
  var body: some View {
    GeometryReader { geo in
      Image(show.imageName)
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width: geo.size.width, height: 300, alignment: .center)
    }
  }
}

struct Cover_Previews: PreviewProvider {
  static var previews: some View {
    Cover(show: .cnn)
  }
}
