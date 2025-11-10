//
//  MenuViewController.swift
//  Food Factory
//
//  Created by Vini Oliveira  on 10/11/25.
//

import UIKit


class MenuViewController: UIViewController {
    
    // TODO: Instanciar a menuView quando tivermos ela
    
    
    
    private let repository: AppRepositoryImp
    
    init(repository: AppRepositoryImp) {
        self.repository = repository
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    

    
    


}
