//
//  RegisterRequestBody.swift
//  sopt33-fourth-seminar
//
//  Created by 티모시 킴 on 11/11/23.
//

import Foundation

struct RegisterRequestBody: Codable {
    let username: String
    let password: String
    let nickname: String
}
