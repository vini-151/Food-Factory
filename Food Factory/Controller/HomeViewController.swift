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
    
    private func showMenu(for factory: FoodFactory) {
        setFactory(factory: factory)
        
        let menu = Menu(appetizer: factory.cozinharAppetizer(),
                        mainDish: factory.cozinharMainDish(),
                        dessert: factory.cozinharDessert()
        )
        
        let vc = MenuViewController(menu: menu, repository: AppRepositoryImp())
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}


extension HomeViewController: HomeViewDelegate {
    func brazilianButtonTapped() {
        showMenu(for: BrazilianFactory())
    }
    func italianButtonTapped() {
        showMenu(for: ItalianFactory())

    }
    func japaneseButtonTapped() {
        showMenu(for: JapaneseFactory())
    }
}


