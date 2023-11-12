//
//  CheckUsernameService.swift
//  sopt33-fourth-seminar
//
//  Created by 티모시 킴 on 11/12/23.
//

import Foundation

class CheckUsernameService {
    static let shared = CheckUsernameService()
    private init() {}
    
    func makeRequest(username: String) -> URLRequest {
        let url = URL(string: "http://3.39.54.196/api/v1/members/check?username=\(username)")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let header = ["Content-Type": "application/json"]
        header.forEach {
            request.addValue($0.value, forHTTPHeaderField: $0.key)
        }
        return request
    }
    
    func PostRegisterData(username: String) async throws -> CheckUsernameDataModel {
        do {
            let request = self.makeRequest(username: username)
            let (data, response) = try await URLSession.shared.data(for: request)
            dump(request)
            guard let httpResponse = response as? HTTPURLResponse else {
                throw NetworkError.responseError
            }
            dump(response)
            guard let parseData = parseCheckUsernameData(data: data)
            else {
                throw NetworkError.responseDecodingError
            }
            return parseData
        } catch {
            throw error
        }
        
    }
    
    
    private func parseCheckUsernameData(data: Data) -> CheckUsernameDataModel? {
        do {
            let jsonDecoder = JSONDecoder()
            let result = try jsonDecoder.decode(CheckUsernameDataModel.self, from: data)
            return result
        } catch {
            print(error)
            return nil
        }
    }
    
    private func configureHTTPError(errorCode: Int) -> Error {
        return NetworkError(rawValue: errorCode)
        ?? NetworkError.unknownError
    }
    
}
