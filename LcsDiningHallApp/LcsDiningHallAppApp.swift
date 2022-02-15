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
                LandingView()
                    .tabItem {
                        Label("Home Page", systemImage: "house.fill")
                    }
                
                CaroselTestView()
                    .tabItem {
                        Label("Daily Menu", systemImage: "list.bullet")
                 }
                ContentView()
                    .tabItem {
                        Label("Food Restrictions", systemImage: "person.fill.xmark")
                    }
            }
        }
    }
}
