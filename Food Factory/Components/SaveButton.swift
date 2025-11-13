//
//  SaveButton.swift
//  Food Factory
//
//  Created by Thiago de Jesus on 13/11/25.
//

import UIKit

class SaveButton: UIButton {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton() {
        setTitle("Save", for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBlue
        tintColor = .white
        titleLabel?.font = .boldSystemFont(ofSize: 18)
        layer.cornerRadius = 8.0
        isUserInteractionEnabled = true
    }
    
    override var isHighlighted: Bool {
        didSet {
            UIView.animate(withDuration: 0.15) {
                self.alpha = self.isHighlighted ? 0.7 : 1.0
            }
        }
    }

}
