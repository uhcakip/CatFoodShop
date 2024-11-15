//
//  HomeView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.mochaSurface
                .ignoresSafeArea()

            VStack {
                HeaderView()
                OfferProductView()
                CategoryTextView()
                ProductListView()
                BottomTabView()
            }
            .padding(.horizontal)
            .alignment(.top)
            .foregroundStyle(.mochaText)
        }
    }
}

#Preview {
    HomeView()
}
