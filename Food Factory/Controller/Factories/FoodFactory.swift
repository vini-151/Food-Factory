//
//  FoodFactory.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 10/11/25.
//

protocol FoodFactory{
    func cozinharAppetizer() -> Appetizer
    func cozinharMainDish() -> MainDish
    func cozinharDessert() -> Dessert
}

// TODO: Cada função deve retornar o protocolo 
