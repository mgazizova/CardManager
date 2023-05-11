//
//  StyleFontsProvider.swift
//  CardManager
//
//  Created by Мария Газизова on 11.05.2023.
//

import Foundation
import SwiftUI

public protocol StyleFontsProvider {
    var largeFont: UIFont { get }
    var mediumFont: UIFont { get }
    var smallFont: UIFont { get }
}

public extension UIFont {
    var font: Font {
        Font(self)
    }
}
