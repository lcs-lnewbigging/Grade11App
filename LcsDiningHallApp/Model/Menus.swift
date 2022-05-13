//
//  Menus.swift
//  LcsDiningHallApp
//
//  Created by Luke Newbigging on 2022-05-13.
//

import Foundation


struct Menus: Codable {
    
    var list: [Menu] = []
    
    static let endpoint = "https://api.sheety.co/c0ce5967a6ccef5afbefe76e842e44f1/meals/breakfast"
}
