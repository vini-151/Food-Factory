//
//  PersistenceController.swift
//  Food Factory
//
//  Created by israel lacerda gomes santos on 10/11/25.
//

// Em Persistence.swift (criado pelo Xcode)

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentContainer
    var viewContext: NSManagedObjectContext {
        return container.viewContext
    }
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "FoodsModel")
        container.loadPersistentStores { (storeDescription, error) in
            if let error : Error {
                fatalError("Something went wrong with Core Data: \(error)")
            }
        }
    }
}
