//
//  ViewController.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 06/11/25.
//

import UIKit

class HomeController: UIViewController {
    
    var homeView: HomeView = HomeView()
    
    private let factory: FoodFactory
    
    
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
    


}

