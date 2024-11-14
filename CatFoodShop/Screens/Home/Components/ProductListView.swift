//  ProductListView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/14.
//

import SwiftUI

struct ProductListView: View {
    let products = [
        CatFood(
            name: "RawMix33 Cage-Free Chicken Dry Cat Food",
            image: .catFoodChicken,
            price: "14.24",
            reviews: "110"
        ),
        CatFood(
            name:
                "RawMix33 Ocean Fish & Cage-Free Chicken Freeze Dried Cat Food",
            image: .catFoodFish,
            price: "14.24",
            reviews: "120"
        ),
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(products) { product in
                    card(product: product)
                }
            }
        }
        .frame(height: 320)
    }

    @ViewBuilder
    private func card(product: CatFood) -> some View {
        Button {
            print("ProductListView: \(product.name) clicked")
        } label: {
            Rectangle()
                .containerRelativeFrame(.horizontal, count: 2, spacing: 10)
                .foregroundStyle(.mochaCrust)
                .overlay {
                    VStack {
                        // MARK: - Image Section
                        Rectangle()
                            .foregroundStyle(.mochaOverlay.opacity(0.7))
                            .frame(height: 150)
                            .overlay {
                                Image(product.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150)
                                    .offset(y: 8)
                            }

                        // MARK: - Text Section
                        VStack {
                            Text("CAT FOOD")
                                .foregroundStyle(.mochaYellow)
                                .font(.caption)
                                .tracking(5)

                            Text(product.name)
                                .font(.system(size: 15))
                                .bold()
                                // .lineLimit(2)
                                .minimumScaleFactor(0.5)
                                .padding(.horizontal, 10)
                                .padding(.top, 3)

                            VStack {
                                HStack {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.mochaYellow)

                                    Text("\(product.reviews) Reviews")
                                        .font(.system(size: 10))
                                        .bold()
                                }

                                Text("$ \(product.price)")
                                    .font(.title3)
                                    .bold()
                            }
                            .alignment(.bottom)
                            .offset(y: -10)
                        }
                        .foregroundStyle(.mochaText)
                        .alignment(.top)
                    }
                }
                .clipShape(
                    .rect(
                        topLeadingRadius: 100,
                        bottomLeadingRadius: 10,
                        bottomTrailingRadius: 10,
                        topTrailingRadius: 100
                    )
                )
        }
    }
}

#Preview {
    ProductListView()
}
