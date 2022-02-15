//
//  ListView.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2021-11-29.
//

import SwiftUI

struct ListView: View {
    var body: some View {
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

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
