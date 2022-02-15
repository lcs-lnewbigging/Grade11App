//
//  CaroselTestView.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2022-02-15.
//

import SwiftUI
import ACarousel

struct Item: Identifiable {
    let id = UUID()
    let image: Image
}

let roles = ["grilledCheese", "BrownieImage", "SoupImage", "SaladImage"]

struct CaroselTestView: View {
    
    let items: [Item] = roles.map { Item(image: Image($0)) }
    
    var body: some View {
        VStack (spacing: 10) {
            
            Text("LCS Dining Hall App")
                .bold()
                .font(.largeTitle)
            
            Divider()
            Text("Today's menu is displayed below")
                .font(.subheadline)
                .bold()
                .padding(10)
            
            HStack{
                ACarousel(items) { item in
                    item.image
                        .resizable()
                        .scaledToFill()
                        .frame(height: 300)
                        .cornerRadius(30)
                }
                .frame(height: 300)
            }
            Divider()
            VStack(alignment: .leading){
                Text("Description")
                    .font(.title3)
                    .bold()
                
                
                    Text("""
                         Hot Lunch:
                         -Grilled Cheese
                         -Wood Fired Pizza
                         Cold Lunch:
                         -Garden Salad
                         -Pumpkin Soup
                         Desert:
                         -Brownies!
                         """)
                
                
            }
            
            Spacer()
            
            
            
        }
    }
}

struct CaroselTestView_Previews: PreviewProvider {
    static var previews: some View {
        CaroselTestView()
    }
}
