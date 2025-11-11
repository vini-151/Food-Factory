//
//  CardButton.swift
//  Food Factory
//
//  Created by Thiago de Jesus on 10/11/25.
//

import UIKit

class CardButton: UIButton {
    
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
    
    func configure(imagee: UIImage, titlee: String, subtitlee: String) {
        title.text = titlee
        subtitle.text = subtitlee
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        setupView()
        setupConstraints()
    }
    
    override var isHighlighted: Bool {
        didSet {
            UIView.animate(withDuration: 0.15) {
                self.alpha = self.isHighlighted ? 0.7 : 1.0
            }
        }
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
            image.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            image.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            image.widthAnchor.constraint(equalToConstant: 100),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            title.topAnchor.constraint(equalTo: topAnchor, constant: -35),
            title.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            title.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            title.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: -55),
            subtitle.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),

        ])
    }
    
}
