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
                NavbarView()
                OfferProductView()
                CategoryTextView()
                ProductListView()
            }
            .padding()
            .alignment(.top)
        }
    }
}

#Preview {
    HomeView()
}
