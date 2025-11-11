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

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        title = "Food Factory"
        homeView.delegate = self
    }
}


extension HomeViewController: HomeViewDelegate {
    func brazilianButtonTapped() {
        let factory = BrazilianFactory()

        let menu = Menu(appetizer: factory.cozinharAppetizer(),
                        mainDish: factory.cozinharMainDish(),
                        dessert: factory.cozinharDessert()
        )
        
        navigationController?.pushViewController(DetailViewController(menu: menu), animated: true)
    }
    
    func italianButtonTapped() {
        let factory = ItalianFactory()

        let menu = Menu(appetizer: factory.cozinharAppetizer(),
                        mainDish: factory.cozinharMainDish(),
                        dessert: factory.cozinharDessert()
        )
        navigationController?.pushViewController(DetailViewController(menu: menu), animated: true)
    }
    
    func japaneseButtonTapped() {
        let factory = JapaneseFactory()

        let menu = Menu(appetizer: factory.cozinharAppetizer(),
                        mainDish: factory.cozinharMainDish(),
                        dessert: factory.cozinharDessert()
        )
        navigationController?.pushViewController(DetailViewController(menu: menu), animated: true)
    }
}


