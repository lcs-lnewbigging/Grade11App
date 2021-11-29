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
                ContentView()
                    .tabItem {
                        Label("Menu", systemImage: "list.dash")
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
