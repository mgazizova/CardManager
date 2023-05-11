//
//  StyleDefaultColorsProvider.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import Foundation
import SwiftUI

public struct StyleDefaultColorsProvider: StyleColorsProvider {
    public var cardBackgroundColor: UIColor {
        return UIColor(named: "white") ?? .white
    }
    
    public var highlightTextColor: UIColor {
        return UIColor(named: "black") ?? .black
    }
    
    public var textColor: UIColor {
        return UIColor(named: "darkGray") ?? .darkGray
    }
    
    public var mainColor: UIColor {
        return UIColor(named: "blue") ?? .blue
    }
    
    public var accentColor: UIColor {
        return UIColor(named: "red") ?? .red
    }
    
    public var backgroundColor: UIColor {
        return UIColor(named: "lightGray") ?? .lightGray
    }
}
