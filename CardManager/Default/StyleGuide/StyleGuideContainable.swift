//
//  StyleGuideContainable.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import Foundation

public protocol StyleGuideContainable {
    var designGuide: StyleGuide { get }
}

public extension StyleGuideContainable {
    var designGuide: StyleGuide {
        DefaultStyleGuide()
    }
}
