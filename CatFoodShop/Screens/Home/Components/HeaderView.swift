//
//  HeaderView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/13.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            item(symbol: "magnifyingglass")
            item(symbol: "cart")
                .alignment(.trailing)
        }
    }

    @ViewBuilder
    private func item(symbol: String) -> some View {
        Button {
            print("HeaderView: \(symbol) clicked")
        } label: {
            Image(systemName: symbol)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
        }

    }
}

#Preview {
    HeaderView()
}
