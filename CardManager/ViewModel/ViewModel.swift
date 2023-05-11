//
//  ViewModel.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    @Published var cards: [CardModel] = []
    @Published var cardListLoadingError = ""
    @Published var mockInformation = ""
    @Published var showErrorAlert = false
    @Published var showInfoAlert = false
    @Published var cardsListFull = false
    
    private var cancellableSet: Set<AnyCancellable> = []
    private var currentOffset = 0
    var dataManager: ServiceProtocol
    
    init(dataManager: ServiceProtocol = Service.shared) {
        self.dataManager = dataManager
    }
    
    func getCardList() {
        dataManager.fetchCards(offset: currentOffset)
            .sink { (dataResponse) in
                if dataResponse.error != nil {
                    self.createAlert(with: dataResponse.error!)
                } else {
                    if dataResponse.value!.count == 0 {
                        self.cardsListFull = true
                    } else {
                        self.cards.append(contentsOf: dataResponse.value!)
                        self.currentOffset += 1
                    }
                }
            }
            .store(in: &cancellableSet)
    }
    
    func createAlert(with error: NetworkError) {
        cardListLoadingError = ErrorHandler(of: error).message
        showErrorAlert = true
    }
}

extension ViewModel {
    func moreButtonTapped(companyID: String) {
        mockInformation = "Нажата кнопка подробнее. companyId: \(companyID)"
        showInfoAlert = true
    }
    
    func eyeButtonTapped(companyID: String) {
        mockInformation = "Нажата кнопка с глазом. companyId: \(companyID)"
        showInfoAlert = true
    }
    
    func trashButtonTapped(companyID: String) {
        mockInformation = "Нажата кнопка с помойкой. companyId: \(companyID)"
        showInfoAlert = true
    }
}
