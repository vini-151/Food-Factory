//
//  BrazilianFactory.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 10/11/25.
//

class BrazilianFactory: FoodFactory {
    func cozinharAppetizer() ->  Appetizer {
        return DadinhoDeTapioca()
    }
    
    func cozinharMainDish() ->  MainDish {
        return Feijoada()
    }
    
    func cozinharDessert() ->  Dessert {
        return Pudim()
    }
    
    

}
