//
//  Input.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 07/10/2020.
//

import UIKit

class InputView: UIView, UITextFieldDelegate {
    
    //MARK: Properties
    let label: UILabel = {
        let label = UILabel()
        label.textColor = .orange
        label.font.withSize(10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter a number"
        textField.backgroundColor = .lightGray
        textField.keyboardType = .numberPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    
    //MARK: init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStack()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupStack()
    }
    
    //MARK: Private functions
    private func setupStack(){
        self.addSubview(label)
        self.addSubview(textField)
        
        setLabelConstraints()
        setTextFieldConstraints()
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    //MARK: Functions
    func setLabelConstraints() {
        label.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        label.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    func setTextFieldConstraints() {
        textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        textField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        textField.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }

}


