//
//  ItalianFactory.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 10/11/25.
//

class ItalianFactory: FoodFactory {
    
    func cozinharAppetizer() ->  Appetizer {
        return Bruschetta()
    }
    
    func cozinharMainDish() ->  MainDish {
        return Carbonara()
    }
    
    func cozinharDessert() ->  Dessert {
        return Tiramisu()
    }

}


