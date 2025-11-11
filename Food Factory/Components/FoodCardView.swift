//
//  FoodCardView.swift
//  Food Factory
//
//  Created by Thiago de Jesus on 10/11/25.
//

import UIKit

class FoodCardView: UIView {
    
    lazy var title: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.text = "Text"
        return label
    }()
    
    lazy private var subtitle: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.text = "The Subtitle Text Here ..."
        label.textColor = .secondaryLabel
        return label
    }()
    
    lazy private var image: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray3
        view.layer.cornerRadius = 10
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func configure(imagee: String, titlee: String, subtitlee: String) {
        title.text = titlee
        subtitle.text = subtitlee
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton(){
        layer.cornerRadius = 12
        backgroundColor = .systemBackground
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 4
    }
    
    func setupView(){
        addSubview(image)
        addSubview(title)
        addSubview(subtitle)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 350),
            
            image.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.heightAnchor.constraint(equalToConstant: 120),
            
            title.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10),
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
            subtitle.centerXAnchor.constraint(equalTo: title.centerXAnchor)

        ])
    }
    
    func configure(titlee: String, subTitlee: String, imagee: String) {
        title.text = titlee
        subtitle.text = subTitlee
    }
}
