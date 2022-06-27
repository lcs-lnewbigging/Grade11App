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
    
    var menuItemBreakfast: Menu
    
    var menuItemLunch: Menu
    
    var menuItemDinner: Menu
    
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
            
            ScrollView {
                
            VStack(alignment: .leading) {
                    
                    Group {
                        Text("Breakfast")
                            .font(.title3)
                            .bold()
                            .padding(.leading)
                        
                        ListItemView(currentMenu: menuItemBreakfast)
                            .padding()
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black, lineWidth: 4)
                            )
                            .padding(.horizontal)
                    }
                    
                    Group {
                        Text("Lunch")
                            .font(.title3)
                            .bold()
                            .padding(.leading)
                        
                        ListItemView(currentMenu: menuItemLunch)
                            .padding()
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black, lineWidth: 4)
                            )
                            .padding(.horizontal)
                    }
                    
                    Group {
                        Text("Dinner")
                            .font(.title3)
                            .bold()
                            .padding(.leading)
                        
                        ListItemView(currentMenu: menuItemDinner)
                            .padding()
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black, lineWidth: 4)
                            )
                            .padding(.horizontal)
                    }
                }
            }
            
            Spacer()
            
            
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        //                    .background(Color.green)
    }
}

struct CaroselTestView_Previews: PreviewProvider {
    static var previews: some View {
        CaroselTestView(menuItemBreakfast: testBreakfast, menuItemLunch: testLunch, menuItemDinner: testDinner)
    }
}
