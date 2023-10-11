//
//  GetDataProtocol.swift
//  sopt33-first-seminar
//
//  Created by 티모시 킴 on 10/11/23.
//

import Foundation

protocol GetDataProtocol { // 데이터를 넘기는 매뉴얼
    func getLoginData(email: String, password: String)
}
