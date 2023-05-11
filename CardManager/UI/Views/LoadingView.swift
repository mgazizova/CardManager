//
//  LoadingView.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import SwiftUI

struct LoadingView: View, StyleGuideContainable {
    var body: some View {
        VStack(alignment: .center) {
            ProgressView()
                .progressViewStyle(.circular)
                .padding([.top, .bottom], 4)
            Text("Подгрузка компаний")
                .font(designGuide.fonts.mediumFont.font)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
