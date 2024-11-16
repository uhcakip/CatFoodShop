//
//  BottomTabView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/14.
//

import SwiftUI

struct BottomTabView: View {
    @State var selectedItem = 1
    private let activeStyle = (
        textColor: Color.mochaYellow,
        width: 0.4,
        backgroundColor: Color.mochaBase
    )
    private let inactiveStyle = (
        textColor: Color.mochaText,
        width: 0.15,
        backgroundColor: Color.clear
    )

    var body: some View {
        HStack {
            ForEach(TabItem.allCases, id: \.self) { item in
                Button {
                    print("BottomTabView: \(item) clicked")
                    selectedItem = item.rawValue
                } label: {
                    tabItem(item: item, isActive: selectedItem == item.rawValue)
                }
            }
        }
        .containerRelativeFrame(.vertical, count: 10, span: 1, spacing: 0)
        .alignment(.bottom)
    }

    @ViewBuilder
    private func tabItem(item: TabItem, isActive: Bool) -> some View {
        let style = isActive ? activeStyle : inactiveStyle

        HStack {
            Image(systemName: item.symbol)
                .font(.system(size: 20))
                .foregroundStyle(style.textColor)

            if isActive {
                Text(item.title)
                    .font(.title3)
                    .bold()
                    .foregroundStyle(style.textColor)
            }
        }
        .containerRelativeFrame([.horizontal, .vertical]) { length, axis in
            if axis == .horizontal {
                return length * style.width
            } else {
                return length * 0.08
            }
        }
        .background(style.backgroundColor)
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
