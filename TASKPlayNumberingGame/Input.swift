//
//  Input.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 07/10/2020.
//

import UIKit

class Input: UIView {
    
    //MARK: Properties
    let label: UILabel = {
        let label = UILabel()
        label.textColor = .orange
        label.font.withSize(10)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        return label
    }()
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter a number"
        textField.backgroundColor = .lightGray
        textField.keyboardType = .numberPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        return textField
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

