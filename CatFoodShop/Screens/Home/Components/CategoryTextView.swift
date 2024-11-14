//
//  CategoryTextView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/14.
//

import SwiftUI

struct CategoryTextView: View {
    var body: some View {
        HStack {
            Text("Cat Food")
                .font(.title2)
                .bold()
                .foregroundStyle(.mochaText)
                .alignment(.leading)

            Button {
                print("CategoryTextView: View All clicked")
            } label: {
                Text("View All")
                    .font(.callout)
                    .foregroundStyle(.mochaYellow)
            }
        }
        .padding(.top, 10)
    }
}

#Preview {
    CategoryTextView()
}
