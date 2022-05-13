//
//  Menu.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2022-05-13.
//

import Foundation

struct Menu: Codable, Identifiable {
    
    let date: String
    let hotMeal: String
    let coldMeal: String
    let id: Int
    
}

let testMenu = [
Menu(date: "5/11/2022",
     hotMeal: "Scrambled Eggs",
     coldMeal: "Yogurt",
     id:2)
]

let testMenuList = [
    Menu(date: "5/11/2022",
         hotMeal: "Scrambled Eggs",
         coldMeal: "Yogurt",
        id: 2)
    
    ,
    
    Menu(date: "6/12/2022",
         hotMeal: "Bacon Egg and Cheese",
         coldMeal: "Bread",
         id:3)
    
    ,
    
    Menu(date: "7/13/2022",
         hotMeal: "French Toast",
         coldMeal: "Smoothies",
         id:4)
 


]
