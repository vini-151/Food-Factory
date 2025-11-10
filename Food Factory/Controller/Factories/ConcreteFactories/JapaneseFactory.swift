//
//  JapaneseFactory.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 10/11/25.
//

class JapaneseFactory: FoodFactory {
    
    func cozinharAppetizer() ->  Appetizer {
        return Guioza()
    }
    
    func cozinharMainDish() ->  MainDish {
        return Sushi()
    }
    
    func cozinharDessert() ->  Dessert {
        return Mochi()
    }

}


