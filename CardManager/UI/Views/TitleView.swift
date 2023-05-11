//
//  TitleView.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import SwiftUI

struct TitleView: View, StyleGuideContainable {
    var body: some View {
        Text("Управление картами")
            .foregroundColor(.blue)
            .font(designGuide.fonts.largeFont.font)
            .padding([.top, .bottom], 6)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
