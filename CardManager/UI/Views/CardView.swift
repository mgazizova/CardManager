//
//  CardView.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import SwiftUI

struct CardView: View, StyleGuideContainable {
    @ObservedObject var viewModel: ViewModel
    var card: CardModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.mobileAppDashboard.companyName)
                    .foregroundColor(designGuide.colors.highlightTextColor.color)
                    .font(designGuide.fonts.largeFont.font)
                Spacer()
                AsyncImage(url: URL(string: card.mobileAppDashboard.logo)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 50, height: 50)
                .cornerRadius(25)
            }
            .padding(.top, 6)
            .padding(.bottom, 4)
            
            Divider()
            
            HStack {
                Text("\(card.customerMarkParameters.mark)")
                    .foregroundColor(designGuide.colors.highlightTextColor.color)
                    .font(designGuide.fonts.largeFont.font)
                    .fontWeight(.bold)
                    .padding(.trailing, 4)
                Text("баллов")
                    .foregroundColor(designGuide.colors.textColor.color)
                    .font(designGuide.fonts.mediumFont.font)
                Spacer()
            }
            .padding([.top, .bottom], 6)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Кэшбек")
                        .foregroundColor(designGuide.colors.textColor.color)
                        .font(designGuide.fonts.smallFont.font)
                    Text("\(card.customerMarkParameters.loyaltyLevel.number) %")
                        .foregroundColor(designGuide.colors.highlightTextColor.color)
                        .font(designGuide.fonts.mediumFont.font)
                }
                .padding(.trailing, 20)
                
                VStack(alignment: .leading) {
                    Text("Уровень")
                        .foregroundColor(designGuide.colors.textColor.color)
                        .font(designGuide.fonts.smallFont.font)
                    Text(card.customerMarkParameters.loyaltyLevel.name)
                        .foregroundColor(designGuide.colors.highlightTextColor.color)
                        .font(designGuide.fonts.mediumFont.font)
                }
                Spacer()
            }
            
            Divider()
            
            HStack {
                Button {
                    viewModel.eyeButtonTapped(companyID: card.company.companyId)
                } label: {
                    Image(systemName: "eye")
                        .foregroundColor(designGuide.colors.mainColor.color)
                        
                }
                .buttonStyle(.borderless)
                .padding(.trailing, 20)
                Button {
                    viewModel.trashButtonTapped(companyID: card.company.companyId)
                } label: {
                    Image(systemName: "trash")
                        .foregroundColor(designGuide.colors.accentColor.color)
                }
                .buttonStyle(.borderless)
                
                Spacer()
                
                Button("Подробнее") {
                    viewModel.moreButtonTapped(companyID: card.company.companyId)
                }
                    .foregroundColor(designGuide.colors.mainColor.color)
                    .font(designGuide.fonts.mediumFont.font)
                    .buttonStyle(.bordered)
                    .padding(.top, 4)
            }
            .padding(.leading, 6)
        }
        .padding([.leading, .trailing, .bottom], 6)
    }
}
