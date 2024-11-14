//
//  CatFood.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/14.
//

import SwiftUI

struct CatFood: Identifiable {
    var id = UUID()
    var name: String
    var image: ImageResource
    var price: String
    var reviews: String
}
