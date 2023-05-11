//
//  Service.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import Foundation
import Combine
import Alamofire

protocol ServiceProtocol {
    func fetchCards(offset: Int) -> AnyPublisher<DataResponse<[CardModel], NetworkError>, Never>
}

class Service {
    static let shared: ServiceProtocol = Service()
    
    private init() {}
}

extension Service: ServiceProtocol {
    func fetchCards(offset: Int = 0) -> AnyPublisher<DataResponse<[CardModel], NetworkError>, Never> {
        let url = URL(string: "http://dev.bonusmoney.pro/mobileapp/getAllCompanies")!
        
        return AF.request(url,
                          method: .post,
                          parameters: ["offset": offset],
                          encoding: JSONEncoding.default,
                          headers: ["TOKEN": "123"])
            .publishDecodable(type: [CardModel].self)
            .map { response in
                response.mapError { error in
                    let backendError = response.data.flatMap {
                        try? JSONDecoder().decode(BackendError.self, from: $0)
                    }
                    return NetworkError(statusCode: response.response?.statusCode, initialError: error, backendError: backendError)
                }
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
