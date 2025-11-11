//
//  DetailViewController.swift
//  Food Factory
//
//  Created by Thiago de Jesus on 10/11/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    private lazy var detailView = DetailView()
    private var menu: Menu
    
    init(menu: Menu) {
        self.menu = menu
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        detailView.configureView(appetizer: menu.appetizer , mainDish: menu.mainDish, dessert: menu.dessert)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = detailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
