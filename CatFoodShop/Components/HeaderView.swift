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
                .alignment(.leading)
            item(symbol: "cart")
        }
    }

    @ViewBuilder
    private func item(symbol: String) -> some View {
        Button {
            print("HeaderView: \(symbol) clicked")
        } label: {
            Image(systemName: symbol)
                .font(.system(size: 20))
        }
    }
}

#Preview {
    HeaderView()
}
