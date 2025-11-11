//
//  Facade.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 10/11/25.
//

final class Menu{
    private(set) var appetizer: any Appetizer
    private(set) var mainDish: any MainDish
    private(set) var dessert: any Dessert
    
    init(appetizer: any Appetizer, mainDish: any MainDish, dessert: any Dessert) {
        self.appetizer = appetizer
        self.mainDish = mainDish
        self.dessert = dessert
    }
}
