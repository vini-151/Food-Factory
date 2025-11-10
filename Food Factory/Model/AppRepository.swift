//
//  AppRepository.swift
//  Food Factory
//
//  Created by israel lacerda gomes santos on 10/11/25.
//


protocol AppRepository {
    func saveFoods (appetizer: Appetizer,mainDish: MainDish, dessert: Dessert) async throws
    func getFoods() async throws -> [Foods]
}
