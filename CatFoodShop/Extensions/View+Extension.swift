//
//  View+Extension.swift
//  CatFoodShop
//
//  Created by Yuna Chou on 2024/11/13.
//

import SwiftUI

enum FrameAlignment {
    case top, bottom, center, leading, trailing, topLeading, topTrailing,
        bottomLeading, bottomTrailing

    var alignment: Alignment {
        switch self {
        case .top: return .top
        case .bottom: return .bottom
        case .center: return .center
        case .leading: return .leading
        case .trailing: return .trailing
        case .topLeading: return .topLeading
        case .topTrailing: return .topTrailing
        case .bottomLeading: return .bottomLeading
        case .bottomTrailing: return .bottomTrailing
        }
    }
}

extension View {
    @ViewBuilder
    func alignment(_ frameAlignment: FrameAlignment) -> some View {
        let alignment = frameAlignment.alignment

        switch frameAlignment {
        case .top, .bottom, .center:
            self.frame(maxHeight: .infinity, alignment: alignment)
        case .leading, .trailing:
            self.frame(maxWidth: .infinity, alignment: alignment)
        case .topLeading, .topTrailing, .bottomLeading, .bottomTrailing:
            self.frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: alignment
            )
        }
    }
}
