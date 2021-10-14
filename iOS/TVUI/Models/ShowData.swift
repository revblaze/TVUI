//
//  ShowData.swift
//  TVUI
//
//  Created by Justin Bush on 2021-10-05.
//

import Foundation

struct Channels {
  
  static let all: [Show] = [.abc, .cnn, .nbc, .msnbc, .fox, .cnbc, .bloomberg, .twc]
  
}

extension Show: Identifiable {
  var id: Self { self }
}

enum Show: CaseIterable {
  
  // News
  case abc
  case cnn
  case nbc
  case msnbc
  case fox
  // Business
  case cnbc
  case bloomberg
  // Weather
  case twc
  
  // Channel Name
  var name: String {
    switch self {
    case .abc:  return "ABC"
    case .cnn:  return "CNN"
    case .nbc:  return "NBC"
    case .msnbc:  return "MSNBC"
    case .fox:  return "Fox News"
    case .cnbc: return "CNBC"
    case .bloomberg:  return "Bloomberg"
    case .twc:  return "The Weather Channel"
    }
  }
  
  // Channel URL
  var url: String {
    switch self {
    case .abc:  return "https://www.livenewsnow.com/american/abc-news-2.html"
    case .cnn:  return "https://www.livenewsnow.com/american/cnn-live.html"
    case .nbc:  return "https://www.livenewsnow.com/other/nbc-news.html"
    case .msnbc:  return "https://www.livenewsnow.com/featured/msnbc.html"
    case .fox:  return "https://www.livenewsnow.com/featured/fox-news.html"
    case .cnbc: return "https://www.livenewsnow.com/american/cnbc-america.html"
    case .bloomberg:  return "https://www.livenewsnow.com/american/bloomberg-television-business.html"
    case .twc:  return "https://www.livenewsnow.com/featured/weather-channel.html"
    }
  }
  
  // Channel Name
  var imageName: String {
    switch self {
    case .abc:  return "abc"
    case .cnn:  return "cnn"
    case .nbc:  return "nbc"
    case .msnbc:  return "msnbc"
    case .fox:  return "fox"
    case .cnbc: return "cnbc"
    case .bloomberg:  return "bloomberg"
    case .twc:  return "twc"
    }
  }
  
  
}
