//
//  HomeView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/13.
//

import SwiftUI

struct HomeView: View {
    @FocusState private var isSearching

    var body: some View {
        ZStack {
            Color.mochaSurface
                .ignoresSafeArea()

            ScrollView {
                VStack {
                    HeaderView(isSearching: $isSearching)
                    OfferProductView()
                    CategoryTextView()
                    ProductListView()
                    BottomTabView()
                }
            }
            .padding(.horizontal)
            .alignment(.top)
            .foregroundStyle(.mochaText)
        }
        .onTapGesture {
            isSearching = false
        }
    }
}

#Preview {
    HomeView()
}
