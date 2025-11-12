//
//  DetailViewController.swift
//  Food Factory
//
//  Created by Thiago de Jesus on 10/11/25.
//

import UIKit

class MenuViewController: UIViewController {
    
    private lazy var menuView = MenuView()
    private var menu: Menu
    private let repository: AppRepository

    
    // teste
    private let testeApiRepository = ApiRepositoryImpl()
    
    init(menu: Menu, repository: AppRepository) {
        self.menu = menu
        self.repository = repository

        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        menuView.configureView(appetizer: menu.appetizer , mainDish: menu.mainDish, dessert: menu.dessert)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = menuView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        menuView.delegate = self
    }
    
}

extension MenuViewController: MenuViewDelegate{
    func saveButtonTapped() async {
        do{
            try await repository.saveFoods(appetizer: menu.appetizer, mainDish: menu.mainDish, dessert: menu.dessert)
            
            // teste
            let response =  await testeApiRepository.getArticles(topic: "Foods", lang: "en", country: "us")
            
            for article in response.map(\.title){
                print(article)
            }
            
            let foods = try await repository.getFoods()
            
            for food in foods{
                print("""
                ========= Food Saved =========
                📅 Data: \(food.formattedDate)
                🥗 Entrada: \(food.appetizer ?? "Sem resultado")
                🍝 Prato Principal: \(food.mainDish ?? "Sem resultado")
                🍰 Sobremesa: \(food.dessert ?? "Sem resultado")
                ==============================
                """)


            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

extension Foods {
    var formattedDate: String {
        guard let date = date else { return "Sem data" }
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        return formatter.string(from: date)
    }
}


