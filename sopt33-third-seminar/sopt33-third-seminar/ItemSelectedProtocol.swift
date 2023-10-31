//
//  ItemSelectedProtocol.swift
//  sopt33-third-seminar
//
//  Created by 티모시 킴 on 10/31/23.
//

import Foundation

protocol ItemSelectedProtocol: NSObject {
    func getButtonState(state: Bool, row: Int)
}
