//
//  HomeView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        RootView {
            OfferProductView()
            CategoryTextView()
            ProductListView()
        }
    }
}

#Preview {
    HomeView()
}
