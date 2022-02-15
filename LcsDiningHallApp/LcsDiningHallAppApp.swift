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
                        Label("Home Page", systemImage: "list.dash")
                    }
                
                ContentView()
                    .tabItem {
                        Label("Feedback", systemImage: "ellipsis.bubble.fill")
                 }
                ContentView()
                    .tabItem {
                        Label("Food Restrictions", systemImage: "person.fill.xmark")
                    }
            }
        }
    }
}
