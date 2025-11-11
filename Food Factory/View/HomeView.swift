//
//  HomeView.swift
//  Food Factory
//
//  Created by Thiago de Jesus on 07/11/25.
//

import UIKit

protocol HomeViewDelegate: AnyObject {
   func brazilianButtonTapped()
   func italianButtonTapped()
   func japaneseButtonTapped()
}


class HomeView: UIView {
    
    private lazy var brazilianButton = makeCardButton(
        imageName: "Image",
        title: "Brazilian Food",
        subtitle: "Traditional flavors full of color, rhythm, and passion — from feijoada to pão de queijo.",
        target: self,
        action: #selector(brazilianButtonTapped)
    )
    
    private lazy var italianButton = makeCardButton(
        imageName: "Image",
        title: "Italian Food",
        subtitle: "Classic recipes made with love and simplicity — pasta, pizza, and the art of eating well.",
        target: self,
        action: #selector(italianButtonTapped)
    )
    
    private lazy var japaneseButton = makeCardButton(
        imageName: "Image",
        title: "japanese Food",
        subtitle: "Delicate balance of flavor and harmony — sushi, ramen, and timeless culinary craft.",
        target: self,
        action: #selector(japaneseButtonTapped)
    )
    
    var delegate: HomeViewDelegate?
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [brazilianButton, italianButton, japaneseButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        return stackView
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray6
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(stackView)
    }
    
    @objc func brazilianButtonTapped(){
        delegate?.brazilianButtonTapped()
    }
    
    @objc func italianButtonTapped(){
        delegate?.italianButtonTapped()
    }
    
    @objc func japaneseButtonTapped(){
        delegate?.japaneseButtonTapped()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            brazilianButton.widthAnchor.constraint(equalToConstant: 360),
            italianButton.widthAnchor.constraint(equalToConstant: 360),
            japaneseButton.widthAnchor.constraint(equalToConstant: 360),
            brazilianButton.heightAnchor.constraint(equalToConstant: 120),
            italianButton.heightAnchor.constraint(equalToConstant: 120),
            japaneseButton.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
}

extension HomeView {
    private func makeCardButton(imageName: String, title: String, subtitle: String, target: Any?, action: Selector? = nil) -> CardButton {
        let button = CardButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configure(imagee: UIImage(named: imageName) ?? UIImage(), titlee: title, subtitlee: subtitle)
        if let target = target, let action = action {
            button.addTarget(target, action: action, for: .touchUpInside)
        }
        return button
    }

}
