//
//  MainSceneViewController.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 06/10/2020.
//
//MARK: TO do
/*
 
 -check input field validity - show alert warning
 
 
 
 */


import UIKit

class InputViewController: UIViewController {
    
    //MARK: Properties
    
    let inputNumberOfPlayers:InputView = {
        let inputNumberOfPlayers = InputView()
        inputNumberOfPlayers.label.text = "Number of players:"
        inputNumberOfPlayers.translatesAutoresizingMaskIntoConstraints = false
        return inputNumberOfPlayers
    }()
    
    let inputDirectionNumber:InputView = {
        let inputDirectionNumber = InputView()
        //add superscript * to label text
        let editedPart = NSMutableAttributedString(string: "Change direction*")
        let finalPart = NSMutableAttributedString(string: "")
        editedPart.addAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10), NSAttributedString.Key.baselineOffset: 5], range: NSRange(location: 16, length: 1))
        finalPart.append(editedPart)
        inputDirectionNumber.label.attributedText = finalPart
        inputDirectionNumber.translatesAutoresizingMaskIntoConstraints = false
        return inputDirectionNumber
    }()
    
    let inputSkipNumber: InputView = {
        let inputSkipNumber = InputView()
        //add superscript * to label text
        let editedPart = NSMutableAttributedString(string: "Skip player*")
        let finalPart = NSMutableAttributedString(string: "")
        editedPart.addAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10), NSAttributedString.Key.baselineOffset: 5], range: NSRange(location: 11, length: 1))
        finalPart.append(editedPart)
        inputSkipNumber.label.attributedText = finalPart
        
        inputSkipNumber.translatesAutoresizingMaskIntoConstraints = false
        return inputSkipNumber
    }()
    
    let descLabel: UILabel = {
        let descLabel = UILabel()
        descLabel.textColor = .orange
        descLabel.lineBreakMode = .byWordWrapping
        descLabel.numberOfLines = 0
        descLabel.font.withSize(10)
        //add superscript * to label text
        let editedPart = NSMutableAttributedString(string: "*by what number the current nuber should be divisible")
        let finalPart = NSMutableAttributedString(string: "")
        editedPart.addAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10), NSAttributedString.Key.baselineOffset: 5], range: NSRange(location: 1, length: 0))
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
    
    let inputStack: UIStackView = {
        let inputStack = UIStackView()
        inputStack.spacing = 30
        inputStack.axis = .vertical
        inputStack.translatesAutoresizingMaskIntoConstraints = false
        return inputStack
    }()
    
    //MARK: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        inputStack.addArrangedSubview(inputNumberOfPlayers)
        inputStack.addArrangedSubview(inputDirectionNumber)
        inputStack.addArrangedSubview(inputSkipNumber)
        view.addSubview(inputStack)
        view.addSubview(descLabel)
        view.addSubview(resultButton)
        
        setupConstraints()
        
        
        inputNumberOfPlayers.textField.delegate  = self
        inputDirectionNumber.textField.delegate  = self
        inputSkipNumber.textField.delegate = self
    }
    
    
    //MARK: Constraints
    func setupConstraints() {
        
        
        inputStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        inputStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        inputStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        descLabel.topAnchor.constraint(equalTo: inputStack.bottomAnchor, constant: 20).isActive = true
        descLabel.leadingAnchor.constraint(equalTo: inputStack.leadingAnchor, constant: 10).isActive = true
        descLabel.trailingAnchor.constraint(equalTo: inputStack.trailingAnchor, constant: -10).isActive = true
        
        resultButton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        resultButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        resultButton.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        resultButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
    }
    
    //MARK: Functions
    
    @objc func resultButtonTapped(){
        if isNumber(string: inputNumberOfPlayers.textField.text ?? ""),isNumber(string: inputDirectionNumber.textField.text ?? ""),isNumber(string: inputSkipNumber.textField.text ?? ""){
            let numberOfPlayers = Int(inputNumberOfPlayers.textField.text!) ?? 0
            let changeDirectionNumber = Int(inputDirectionNumber.textField.text!) ?? 0
            let skipPlayerNumber = Int(inputSkipNumber.textField.text!) ?? 0
            
            var i = 1
            var winnerCounter = 0
            var skipCounter = 0
            var directionCouter = 0
            var d = "+"
            while i <= numberOfPlayers {
                
                if (i % skipPlayerNumber) == 0 {
                    skipCounter += 1
                    if d == "-" { winnerCounter -= 2 }
                    else { winnerCounter += 2 }
                } else {
                    if d == "-" { winnerCounter -= 1 }
                    else { winnerCounter += 1 }
                }
                
                if (i % changeDirectionNumber) == 0 {
                    if d == "-" { d = "+" }
                    else { d = "-" }
                    directionCouter += 1
                }
                i += 1
            }
            
            
            let resultViewController = ResultViewController(winner: winnerCounter, skipped: skipCounter, changedDirection: directionCouter)
            resultViewController.parentImage.image = self.navigationController?.view.asImage()
            resultViewController.modalPresentationStyle = .fullScreen
            self.present(resultViewController, animated: false, completion: nil)
            
            
            
            
            
            
        }
        
        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        inputNumberOfPlayers.textField.resignFirstResponder()
        inputDirectionNumber.textField.resignFirstResponder()
        inputSkipNumber.textField.resignFirstResponder()
    }
    
    //MARK: Private functions
    
    private func isNumber(string: String) -> Bool {
        return CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: string))
    }
    
    
}
//MARK: Extensions

extension InputViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
