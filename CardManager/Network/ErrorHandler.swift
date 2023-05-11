//
//  ErrorHandler.swift
//  CardManager
//
//  Created by Мария Газизова on 11.05.2023.
//

import Foundation

struct ErrorHandler {
    var message: String = ""
    
    private func message(by code: Int) -> String? {
        switch code {
        case 401:
            return ErrorMessage.authorization
        case 400:
            return nil
        case 500:
            return ErrorMessage.fatal
        default:
            return ErrorMessage.fatal
        }
    }
    
    init(of error: NetworkError) {
        guard let code = error.statusCode else {
            self.message = ErrorMessage.fatal
            return
        }
        
        let message = message(by: code)
        
        guard let message else {
            self.message = error.backendError == nil ? error.initialError.localizedDescription : error.backendError?.message ?? ""
            return
        }
        self.message = message
    }
}

enum ErrorMessage {
    static let authorization = "Ошибка авторизации"
    static let fatal = "Все упало"
}
