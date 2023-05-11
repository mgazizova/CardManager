//
//  StyleColorsProvider.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import Foundation
import SwiftUI

public protocol StyleColorsProvider {
    var cardBackgroundColor: UIColor { get }
    var highlightTextColor: UIColor { get }
    var textColor: UIColor { get }
    var mainColor: UIColor { get }
    var accentColor: UIColor { get }
    var backgroundColor: UIColor { get }
}

public extension UIColor {
    var color: Color {
        Color(self)
    }
}
