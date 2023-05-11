//
//  NetworkError.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import Foundation
import Alamofire

struct NetworkError: Error {
    let statusCode: Int?
    let initialError: AFError
    let backendError: BackendError?
}

struct BackendError: Codable, Error {
    var type: String
    var message: String
}
