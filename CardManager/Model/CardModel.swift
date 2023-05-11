//
//  CardModel.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import Foundation

struct CardModel: Codable {
    let id = UUID()
    var company: Company
    var customerMarkParameters: CustomerMarkParameters
    var mobileAppDashboard: MobileAppDashboard
}

struct Company: Codable {
    var companyId: String
}

struct CustomerMarkParameters: Codable {
    var loyaltyLevel: LoyaltyLevel
    var mark: Int
}

struct LoyaltyLevel: Codable {
    var number: Int
    var name: String
}

struct MobileAppDashboard: Codable {
    var companyName: String
    var logo: String
}
