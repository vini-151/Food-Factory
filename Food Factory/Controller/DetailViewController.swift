//
//  DetailViewController.swift
//  Food Factory
//
//  Created by Thiago de Jesus on 10/11/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    private lazy var detailView = DetailView()
    
    override func loadView() {
        view = detailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
