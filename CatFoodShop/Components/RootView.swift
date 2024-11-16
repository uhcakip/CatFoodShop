//
//  RootView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/14.
//

import SwiftUI

struct RootView<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        ZStack {
            Color.mochaSurface
                .ignoresSafeArea()

            VStack {
                HeaderView()
                content
                BottomTabView()
            }
            .padding(.horizontal)
            .alignment(.top)
            .foregroundStyle(.mochaText)
        }
    }
}

#Preview {
    RootView {}
}
