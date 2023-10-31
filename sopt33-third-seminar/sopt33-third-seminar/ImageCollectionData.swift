//
//  ImageCollectionData.swift
//  sopt33-third-seminar
//
//  Created by 티모시 킴 on 10/31/23.
//

import Foundation

struct ImageCollectionData {
    let image: String
    var isLiked: Bool
    
    init(image: String, isLiked: Bool) {
        self.image = image
        self.isLiked = isLiked
    }
}
