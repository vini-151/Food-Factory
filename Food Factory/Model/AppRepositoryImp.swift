//
//  Untitled.swift
//  Food Factory
//
//  Created by israel lacerda gomes santos on 10/11/25.
//
import CoreData


class AppRepositoryImp : AppRepository {
    
    let viewContext: NSManagedObjectContext
    
    init(viewContext: NSManagedObjectContext) {
        self.viewContext = viewContext
    }
    
    func saveFoods(appetizer: any Appetizer, mainDish: any MainDish, dessert: any Dessert) async throws {
        let foods = Foods(context: viewContext)
        foods.appetizer = appetizer.name
        foods.mainDish = mainDish.name
        foods.dessert = dessert.name
        foods.date = Date()
        try await viewContext.perform {
            try self.viewContext.save()
        }
    }
    
    @MainActor
    func getFoods() async throws -> [Foods] {
        let request = Foods.fetchRequest()
        return try self.viewContext.fetch(request)
    }
}
