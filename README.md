<div align="center">
  <h1>CatFoodShop</h1>

  <p>
    <a href="https://developer.apple.com/swift/" target="_blank"><img src="https://img.shields.io/badge/Swift-6-585b70?logo=swift&style=for-the-badge&labelColor=313244&logoColor=fab387" alt="Swift 6"></a>
    <a href="https://developer.apple.com/xcode/"><img src="https://img.shields.io/badge/Xcode-16-585b70?logo=Xcode&style=for-the-badge&labelColor=313244&logoColor=89b4fa" alt="Xcode 16"></a>
    <a href="https://developer.apple.com/ios/"><img src="https://img.shields.io/badge/iOS-18-585b70?logo=apple&style=for-the-badge&labelColor=313244&logoColor=cdd6f4" alt="iOS 18"></a>
  </p>

  <img width="75%" alt="mockup" src="https://github.com/user-attachments/assets/e420d2a3-70c5-420b-9e32-ee26a21c6032">
</div>

## Overview
This SwiftUI application is a practice project exploring alternative layout approaches. It uses `.containerRelativeFrame` modifier as an alternative to `GeometryReader`, while replacing `Spacer` with `.frame` modifier and its `alignment` parameter for view positioning. These approaches also enable automatic view proportion adjustments based on screen size while maintaining less code.

For my notes on these layout concepts, check out:
- [SwiftUI - Stop Using Spacer (1)](https://publish.obsidian.md/uhcakip/Apple+Dev/Highlights/Videos/SwiftUI+-+Stop+Using+Spacer+(1))
- [SwiftUI - Stop Using Spacer (2)](https://publish.obsidian.md/uhcakip/Apple+Dev/Highlights/Videos/SwiftUI+-+Stop+Using+Spacer+(2))
- [SwiftUI - Stop Using GeometryReader](https://publish.obsidian.md/uhcakip/Apple+Dev/Highlights/Videos/SwiftUI+-+Stop+Using+GeometryReader)

### Design & Assets
The app uses [Catppuccin Mocha](https://catppuccin.com/palette#flavor-mocha) theme and product images from [Animals Like Us](https://www.animalslikeus.com/).

## Demo
<img alt="demo" src="https://github.com/user-attachments/assets/659bd44e-1114-4567-9b16-390cdd1bb1c4">

## Project Structure
```
.
└── CatFoodShop
    ├── CatFoodShopApp.swift
    ├── Components
    │   ├── BottomTabView.swift
    │   ├── HeaderView.swift
    │   └── RootView.swift
    ├── Extensions
    │   └── View+Extension.swift
    └── Screens
        └── Home
            ├── Components
            │   ├── CategoryTextView.swift
            │   ├── OfferProductView.swift
            │   └── ProductListView.swift
            ├── HomeView.swift
            └── Models
                └── CatFood.swift
```
