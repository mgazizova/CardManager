//
//  StyleDefaultFontProvider.swift
//  CardManager
//
//  Created by Мария Газизова on 11.05.2023.
//

import Foundation
import SwiftUI

public struct StyleDefaultFontProvider: StyleFontsProvider {
    public var largeFont: UIFont {
        return UIFont.systemFont(ofSize: 18)
    }
    
    public var mediumFont: UIFont {
        return UIFont.systemFont(ofSize: 14)
    }
    
    public var smallFont: UIFont {
        return UIFont.systemFont(ofSize: 10)
    }
}
