//
//  VideoModel.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 18/07/24.
//

import Foundation

struct VideoModel: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}
