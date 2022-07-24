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
            Text(currentMenu.primaryFood)
                .font(.headline)
                .lineLimit(3)
                .fixedSize(horizontal: false, vertical: true)
                .minimumScaleFactor(1)
                .multilineTextAlignment(.leading)
                .allowsTightening(true)
                
               
                
            
            VStack(alignment: .leading) {
                HStack {
                    Text("**Second Option:** \(currentMenu.secondaryFood)")
                    Spacer()
                }
                .font(.caption)
                
//                Text(currentMenu.date)
//                    .font(.caption)
            }
        }

    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(currentMenu: testLunch)
    }
}

