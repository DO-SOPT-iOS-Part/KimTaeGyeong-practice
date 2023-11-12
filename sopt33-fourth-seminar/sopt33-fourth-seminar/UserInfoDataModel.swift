//
//  UserInfoDataModel.swift
//  sopt33-fourth-seminar
//
//  Created by 티모시 킴 on 11/11/23.
//

import Foundation

// MARK: - UserInfoDataModel
struct UserInfoDataModel: Codable {
    let username, nickname: String
    
    enum CodingKeys: CodingKey {
        case username
        case nickname
    }
}
