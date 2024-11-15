//
//  HeaderView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/13.
//

import SwiftUI

struct HeaderView: View {
    @FocusState.Binding var isSearching: Bool
    @State private var searchText = ""

    var body: some View {
        HStack {
            TextField(
                "Search",
                text: $searchText,
                prompt: Text("\(Image(systemName: "magnifyingglass")) Search")
                    .foregroundStyle(.mochaText.opacity(0.8))

            )
            .textFieldStyle(CustomTextFieldStyle())
            .tint(.mochaText)
            .focused($isSearching)

            Button {
                print("HeaderView: cart clicked")
            } label: {
                Image(systemName: "cart")
                    .font(.system(size: 20))
            }
        }
        .containerRelativeFrame(.vertical, count: 28, spacing: 0)
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(6)
            .background(.mochaBase)
            .cornerRadius(5)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.mochaText, lineWidth: 1)
            }
    }
}

#Preview {
    @FocusState var isSearching

    HeaderView(isSearching: $isSearching)
}
