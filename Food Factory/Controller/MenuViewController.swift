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
    func showAlert() {
        let alert = UIAlertController(title: "Sucesso", message: "Prato salvo com sucesso!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
    func saveButtonTapped() async {
        do{
            try await repository.saveFoods(appetizer: menu.appetizer, mainDish: menu.mainDish, dessert: menu.dessert)
            
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


