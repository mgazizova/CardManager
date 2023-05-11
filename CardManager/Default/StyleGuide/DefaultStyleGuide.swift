//
//  DefaultStyleGuide.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import Foundation

public class DefaultStyleGuide: StyleGuide {
    public init() {
        super.init(
            colorsProvider: StyleDefaultColorsProvider(),
            fontsProvider: StyleDefaultFontProvider())
    }
}
