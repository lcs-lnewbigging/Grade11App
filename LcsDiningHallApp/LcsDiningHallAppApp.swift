//
//  LcsDiningHallAppApp.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2021-11-29.
//

import SwiftUI

@main
struct LcsDiningHallAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                CarouselHomePageView(menuItemBreakfast: testBreakfast, menuItemLunch: testLunch, menuItemDinner: testDinner)
                    .tabItem {
                        Label("Daily Menu", systemImage: "list.bullet")
                 }
//                FoodRestrictionsView()
//                    .tabItem {
//                        Label("Food Restrictions", systemImage: "person.fill.xmark")
//                    }
                AboutView()
                    .tabItem {
                        Label("Home Page", systemImage: "house.fill")
                    }
            }
        }
    }
}
