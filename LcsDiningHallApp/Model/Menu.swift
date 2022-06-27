//
//  Menu.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2022-05-13.
//

import Foundation

struct Menu: Codable, Identifiable {
    
    let date: String //Date
    let meal: String
//    let description: String
//    let allergens: String
    let primaryFood: String
    let secondaryFood: String
    let id: Int
    
}

let testBreakfast = Menu(date: "5/11/2022", meal: "Breakfast", primaryFood: "Eggs Benny with sausages", secondaryFood: "Fruit Yogurt", id:1)

let testLunch = Menu(date: "5/11/2022", meal: "Lunch", primaryFood: "Grilled 3 Cheese with Bacon and Potato Wedges", secondaryFood: "Pulled Chicken Nacho Bowl", id:2)

let testDinner = Menu(date: "5/11/2022", meal: "Dinner", primaryFood: "Beef Vindaloo", secondaryFood: "Crispy Tofu", id:3)


let testList: [Menu] = [
    
    Menu(date: "5/11/2022", meal: "Lunch", primaryFood: "Pulled Chicken Nacho Bowl", secondaryFood: "Beef Vindaloo", id: 4)
    
    ,
    
    Menu(date: "6/12/2022", meal: "Dinner", primaryFood: "Sweet And Spicy Shrimp With Shanghai Noodles", secondaryFood: "Chicken Souvlaki", id:5)
    
    ,
    
    Menu(date: "7/13/2022", meal: "Lunch", primaryFood: "Grilled 3 Cheese with Bacon and Potato Wedges", secondaryFood: "Crispy Tofu", id:6)
]
