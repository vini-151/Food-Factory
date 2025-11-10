//
//  ViewController.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 06/11/25.
//

import UIKit



class HomeViewController: UIViewController {
    
    var homeView: HomeView = HomeView()
    
    private var factory: FoodFactory
    
    init(factory: FoodFactory = BrazilianFactory()){
        self.factory = factory
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func cozinharRefeicao(){
        
        var appetizer = factory.cozinharAppetizer()
        var mainDish = factory.cozinharMainDish()
        var dessert = factory.cozinharDessert()
        

        
        
//        navigationController.?.pushViewController(ReceiptController(), animated: true)
    }
    
    func setFactory (factory: FoodFactory) {
        self.factory = factory
    }


}

