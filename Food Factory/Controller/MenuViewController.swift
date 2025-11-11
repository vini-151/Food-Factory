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
    func saveButtonTapped() async {
        do{
            try await repository.saveFoods(appetizer: menu.appetizer, mainDish: menu.mainDish, dessert: menu.dessert)
            
            let foods = try await repository.getFoods()
            
            for food in foods{
                print("============")
                print(food.date ?? "no data")
                print(food.appetizer ?? "no result")
                print(food.mainDish ?? "no result")
                print(food.dessert ?? "no result")
                print("============")


            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
