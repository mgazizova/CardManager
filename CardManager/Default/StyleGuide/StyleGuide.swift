//
//  StyleGuide.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import Foundation

open class StyleGuide: ObservableObject {
    private let colorsProvider: StyleColorsProvider
    private let fontsProvider: StyleFontsProvider
    
    init(colorsProvider: StyleColorsProvider,
         fontsProvider: StyleFontsProvider) {
        self.colorsProvider = colorsProvider
        self.fontsProvider = fontsProvider
    }
    
    public var colors: StyleColorsProvider {
        colorsProvider
    }
    
    public var fonts: StyleFontsProvider {
        fontsProvider
    }
}
