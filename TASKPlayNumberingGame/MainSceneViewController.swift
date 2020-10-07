//
//  MainSceneViewController.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 06/10/2020.
//

import UIKit

class MainSceneViewController: UIViewController {
    //MARK: Properties
    
    let inputNumberOfPlayers:Input = {
        let inputNumberOfPlayers = Input()
        inputNumberOfPlayers.label.text = "Number of players:"
        return inputNumberOfPlayers
    }()
    
    let inputDirectionNumber:Input = {
        let inputDirectionNumber = Input()
        //add superscript * to label text
        let fontSuper = UIFont(name: inputDirectionNumber.label.font.fontName, size:10)
        let editedPart = NSMutableAttributedString(string: "Change direction*")
        let finalPart = NSMutableAttributedString(string: "")
        editedPart.addAttributes([NSAttributedString.Key.font: fontSuper!], range: NSRange(location: 16, length: 1))
        finalPart.append(editedPart)
        inputDirectionNumber.label.attributedText = finalPart
        return inputDirectionNumber
    }()
    
    let inputSkipNumber: Input = {
        let inputSkipNumber = Input()
        //add superscript * to label text
        let fontSuper = UIFont(name: inputSkipNumber.label.font.fontName, size:10)
        let editedPart = NSMutableAttributedString(string: "Skip player*")
        let finalPart = NSMutableAttributedString(string: "")
        editedPart.addAttributes([NSAttributedString.Key.font: fontSuper!], range: NSRange(location: 11, length: 1))
        finalPart.append(editedPart)
        inputSkipNumber.label.attributedText = finalPart
        return inputSkipNumber
    }()
    
    let descLabel: UILabel = {
        let descLabel = UILabel()
        //add superscript * to label text
        let fontSuper = UIFont(name: descLabel.font.fontName, size:10)
        let editedPart = NSMutableAttributedString(string: "*by what number the current nuber should be divisible")
        let finalPart = NSMutableAttributedString(string: "")
        editedPart.addAttributes([NSAttributedString.Key.font: fontSuper!], range: NSRange(location: 1, length: 0))
        finalPart.append(editedPart)
        descLabel.attributedText = finalPart
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        return descLabel
    }()
    
    let resultButton:UIButton = {
        let resultButton = UIButton()
        resultButton.backgroundColor = .orange
        resultButton.setTitle("Result", for: .normal)
        resultButton.setTitleColor(.black, for: .normal)
        resultButton.addTarget(self, action: #selector(resultButtonTapped), for: .touchUpInside)
        resultButton.translatesAutoresizingMaskIntoConstraints = false
        return resultButton
    }()
    
    //MARK: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(inputNumberOfPlayers)
        view.addSubview(inputDirectionNumber)
        view.addSubview(inputSkipNumber)
        view.addSubview(descLabel)
        view.addSubview(resultButton)
        
        setupConstraints()
    }
    
    
    //MARK: Constraints
    func setupConstraints() {
        
        let textFieldLeadingConst:CGFloat = 10
        let textFieldTrailingConst:CGFloat = -10
        let labelLeadingConst:CGFloat = 30
        let labelTrailingConst:CGFloat = -30
        
        /*
        NSLayoutConstraint.activate([
            inputNumberOfPlayers.label.topAnchor.constraint(equalTo: view.topAnchor,constant: 100),
            inputNumberOfPlayers.label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: labelLeadingConst),
            inputNumberOfPlayers.label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: labelTrailingConst),
            inputNumberOfPlayers.label.heightAnchor.constraint(equalToConstant: 12),
            
            inputNumberOfPlayers.textField.topAnchor.constraint(equalTo: inputNumberOfPlayers.label.bottomAnchor,constant: 5),
            inputNumberOfPlayers.textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: textFieldLeadingConst),
            inputNumberOfPlayers.textField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: textFieldTrailingConst),
            inputNumberOfPlayers.textField.heightAnchor.constraint(equalToConstant: 44),
            
            directionLabel.topAnchor.constraint(equalTo: numOfPlayersTextField.bottomAnchor, constant: 30),
            directionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: labelLeadingConst),
            directionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: labelTrailingConst),
            directionLabel.heightAnchor.constraint(equalToConstant: 12),
            
            directionTextField.topAnchor.constraint(equalTo: directionLabel.bottomAnchor,constant: 5),
            directionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: textFieldLeadingConst),
            directionTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: textFieldTrailingConst),
            directionTextField.heightAnchor.constraint(equalToConstant: 44),
            
            skipPlayerLabel.topAnchor.constraint(equalTo: directionTextField.bottomAnchor,constant: 30),
            skipPlayerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: labelLeadingConst),
            skipPlayerLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: labelTrailingConst),
            skipPlayerLabel.heightAnchor.constraint(equalToConstant: 12),
            
            skipPlayerTextField.topAnchor.constraint(equalTo: skipPlayerLabel.bottomAnchor,constant: 5),
            skipPlayerTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: textFieldLeadingConst),
            skipPlayerTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: textFieldTrailingConst),
            skipPlayerTextField.heightAnchor.constraint(equalToConstant: 44),
            
            skipPlayerDescLabel.topAnchor.constraint(equalTo: skipPlayerTextField.bottomAnchor, constant: 30),
            skipPlayerDescLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: labelLeadingConst),
            skipPlayerDescLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: labelTrailingConst),
            skipPlayerDescLabel.heightAnchor.constraint(equalToConstant: 12),
            
            resultButton.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            resultButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            resultButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            resultButton.heightAnchor.constraint(equalToConstant: 44),
        ])*/
    }
    
    //MARK: Functions
    
    @objc func resultButtonTapped(){
        print("result button tapped")
    }
    
    
}
