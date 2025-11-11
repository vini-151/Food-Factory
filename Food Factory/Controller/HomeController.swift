//
//  ViewController.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 06/11/25.
//

import UIKit

class HomeController: UIViewController {
    
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


extension HomeController: HomeViewDelegate {
    func brazilianButtonTapped() {
        navigationController?.pushViewController(DetailViewController(), animated: true)
    }
    
    func italianButtonTapped() {
        navigationController?.pushViewController(DetailViewController(), animated: true)
    }
    
    func japaneseButtonTapped() {
        navigationController?.pushViewController(DetailViewController(), animated: true)
    }
}


