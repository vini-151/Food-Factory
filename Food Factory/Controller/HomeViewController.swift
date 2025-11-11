//
//  ViewController.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 06/11/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeView: HomeView = HomeView()
    override func loadView() {
        view = homeView
    }
    
    private var factory: FoodFactory
    
    init(factory: FoodFactory = BrazilianFactory()) {
        self.factory = factory
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        title = "Food Factory"
        homeView.delegate = self
    }

    func setFactory(factory: FoodFactory) {
        self.factory = factory
    }
    
}


extension HomeViewController: HomeViewDelegate {
    func brazilianButtonTapped() {
    
        setFactory(factory: BrazilianFactory())

        
        let menu = Menu(appetizer: factory.cozinharAppetizer(),
                        mainDish: factory.cozinharMainDish(),
                        dessert: factory.cozinharDessert()
        )
        
        navigationController?.pushViewController(MenuViewController(menu: menu, repository: AppRepositoryImp()), animated: true)
    }
    
    func italianButtonTapped() {
        
        setFactory(factory: ItalianFactory())

        
        let menu = Menu(appetizer: factory.cozinharAppetizer(),
                        mainDish: factory.cozinharMainDish(),
                        dessert: factory.cozinharDessert()
        )
        navigationController?.pushViewController(MenuViewController(menu: menu, repository: AppRepositoryImp()), animated: true)
    }
    
    func japaneseButtonTapped() {
        
        setFactory(factory: JapaneseFactory())

        let menu = Menu(appetizer: factory.cozinharAppetizer(),
                        mainDish: factory.cozinharMainDish(),
                        dessert: factory.cozinharDessert()
        )
        navigationController?.pushViewController(MenuViewController(menu: menu, repository: AppRepositoryImp()), animated: true)
    }
}


