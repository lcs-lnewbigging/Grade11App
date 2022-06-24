//
//  ListItemView.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2022-05-13.
//

import SwiftUI

struct ListItemView: View {
    
    
    // MARK: Stored properties
    let currentMenu: Menu
    
    // MARK: Computed properties
    var body: some View {

        VStack(alignment: .leading) {
            Text(currentMenu.hotMeal)
                .font(.headline)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("**Second Option:** \(currentMenu.coldMeal)")
                    Spacer()
                }
                .font(.caption)
                
                Text(currentMenu.date)
                    .font(.caption)
            }
        }

    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(currentMenu: .constant([testList]))
    }
}

