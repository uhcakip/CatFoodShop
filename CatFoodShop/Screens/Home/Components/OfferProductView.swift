//
//  OfferProductView.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/13.
//

import SwiftUI

struct OfferProductView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .containerRelativeFrame(.vertical, count: 10, span: 3, spacing: 0)
            .foregroundStyle(.mochaCrust)
            .overlay {
                ZStack {
                    Image(.catFoodHeader)
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(1.7)
                        .offset(x: 125, y: 50)

                    VStack(alignment: .listRowSeparatorLeading, spacing: 5) {
                        Text("OFFER")
                            .font(.title3)
                            .foregroundStyle(.mochaYellow)
                            .tracking(5)

                        Text("Flat 35% Off")
                            .font(.title)

                        Text("The safe and easy way to add the natural goodness of raw meat and organs, that your cat will love")
                            .minimumScaleFactor(0.5)
                            .frame(width: 170)
                            .padding(.bottom, 5)

                        Button {
                            print("OfferProductView: View Offers clicked")
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .overlay {
                                    Text("View Offers")
                                        .font(.system(size: 10))
                                        .foregroundStyle(.mochaCrust)
                                        .bold()
                                        .tracking(1)
                                }
                                .foregroundStyle(.mochaYellow)
                                .frame(width: 100, height: 30)
                        }
                    }
                    .alignment(.leading)
                    .padding()
                }
            }
            .clipped()
            .shadow(radius: 10)
            .padding(.top, 10)
    }
}

#Preview {
    OfferProductView()
}
