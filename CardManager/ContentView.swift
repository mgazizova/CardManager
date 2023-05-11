//
//  ContentView.swift
//  CardManager
//
//  Created by Мария Газизова on 10.05.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            TitleView()
            NavigationView {
                List {
                    ForEach(viewModel.cards, id: \.id) { card in
                        Section {
                            CardView(viewModel: viewModel, card: card)
                        }
                    }
                    
                    if viewModel.cardsListFull == false {
                        HStack {
                            Spacer()
                            LoadingView()
                                .onAppear {
                                    viewModel.getCardList()
                                }
                            Spacer()
                        }
                    }
                    
                }
                .alert(isPresented: $viewModel.showInfoAlert) {
                    Alert(title: Text("Info"),
                          message: Text(viewModel.mockInformation),
                          dismissButton: .default(Text("OK")))
                }
                .listStyle(.automatic)
            }
        }
        .alert(isPresented: $viewModel.showErrorAlert) {
            Alert(title: Text("Error"),
                  message: Text(viewModel.cardListLoadingError),
                  dismissButton: .default(Text("OK")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
