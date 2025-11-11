//
//  DetailView.swift
//  Food Factory
//
//  Created by Thiago de Jesus on 11/11/25.
//

import UIKit

class DetailView: UIView {
    
    private lazy var appetizerView: FoodCardView = {
        let view = FoodCardView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        return view
    }()
    
    private lazy var dessertView: FoodCardView = {
        let view = FoodCardView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        return view
    }()
    
    private lazy var mainDishView: FoodCardView = {
        let view = FoodCardView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [appetizerView, dessertView, mainDishView])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.distribution = .equalSpacing
        stackView.isUserInteractionEnabled = true
        return stackView
    }()
    
    private lazy var saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 8.0
        button.isUserInteractionEnabled = true
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray6
        setupViews()
        setupConstraints()
    }
    
    func setupViews(){
        addSubview(stackView)
        addSubview(saveButton)
    }

    func setupConstraints(){
        
        let stackViewConstraints: [NSLayoutConstraint] = [
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 120),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ]
        
        let appetizerConstraints: [NSLayoutConstraint] = [
//            appetizerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            appetizerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            appetizerView.heightAnchor.constraint(equalToConstant: 200)
        ]
        
        let dessertConstraints: [NSLayoutConstraint] = [
//            dessertView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            appetizerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            dessertView.heightAnchor.constraint(equalToConstant: 200)
        ]
        
        let mainDishConstraints: [NSLayoutConstraint] = [
//            mainDishView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            mainDishView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            mainDishView.heightAnchor.constraint(equalToConstant: 200)
        ]
        
        let saveButtonConstraints: [NSLayoutConstraint] = [
            saveButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20),
            saveButton.widthAnchor.constraint(equalToConstant: 200),
            saveButton.heightAnchor.constraint(equalToConstant: 50),
            saveButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ]
        
        NSLayoutConstraint.activate(appetizerConstraints +
                                    dessertConstraints +
                                    mainDishConstraints +
                                    stackViewConstraints +
                                    saveButtonConstraints
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
