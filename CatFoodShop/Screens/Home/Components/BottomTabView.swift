//
//  BottomTabView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/14.
//

import SwiftUI

struct BottomTabView: View {
    @State var seletedItem = 1

    var body: some View {
        HStack {
            ForEach(TabItem.allCases, id: \.self) { item in
                Button {
                    seletedItem = item.rawValue
                } label: {
                    tabItem(item: item, isActive: seletedItem == item.rawValue)
                }
            }
        }
        .alignment(.bottom)
    }

    @ViewBuilder
    private func tabItem(item: TabItem, isActive: Bool) -> some View {
        HStack {
            Image(systemName: item.symbol)
                .font(.system(size: 20))
                .foregroundStyle(isActive ? .mochaYellow : .mochaText)

            if isActive {
                Text(item.title)
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.mochaYellow)
            }
        }
        .frame(width: isActive ? 150 : 60, height: 60)
        .background(isActive ? .mochaBase : .clear)
        .clipShape(.capsule)
    }
}

enum TabItem: Int, CaseIterable {
    case menu = 0
    case home
    case member

    var title: String {
        switch self {
        case .menu:
            return "Menu"
        case .home:
            return "Home"
        case .member:
            return "Member"
        }
    }

    var symbol: String {
        switch self {
        case .menu:
            return "menucard"
        case .home:
            return "house"
        case .member:
            return "person"
        }
    }
}

#Preview {
    BottomTabView()
}
