//
//  HomeView.swift
//  Food Factory
//
//  Created by Thiago de Jesus on 07/11/25.
//

import UIKit

class HomeView: UIView {
    
    var teste: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(teste)
    }
    
    private func setupConstraints() {
        let labelConstraints: [NSLayoutConstraint] = [
            teste.centerXAnchor.constraint(equalTo: centerXAnchor),
            teste.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(labelConstraints)
    }
    
}
