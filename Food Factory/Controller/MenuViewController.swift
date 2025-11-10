//
//  MenuViewController.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 10/11/25.
//

import UIKit


class MenuViewController: UIViewController {
    
    // TODO: Instanciar a menuView quando tivermos ela
    
    private let factory: FoodFactory
    
    private let repository: AppRepositoryImp
    
    init(factory: FoodFactory, repository: AppRepositoryImp) {
        self.factory = factory
        self.repository = repository
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func cozinharRefeicao(){
        
        var appetizer = factory.cozinharAppetizer()
        var mainDish = factory.cozinharMainDish()
        var dessert = factory.cozinharDessert()
        
    }
    

    
    


}
