//
//  Facade.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 10/11/25.
//

final class Facade{
    private var appetizer: any Appetizer
    private var mainDish: any MainDish
    private var dessert: any Dessert
    
    init(appetizer: any Appetizer, mainDish: any MainDish, dessert: any Dessert) {
        self.appetizer = appetizer
        self.mainDish = mainDish
        self.dessert = dessert
    }
    

}
