//
//  MainSceneViewController.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 06/10/2020.
//

import UIKit

class MainSceneViewController: UIViewController {
    //MARK: Properties
    let numOfPlayersLabel = UILabel()
    let directionLabel = UILabel()
    let skipPlayerLabel = UILabel()
    let skipPlayerDescLabel = UILabel()
    
    var numOfPlayersTextField = UITextField()
    var directionTextField = UITextField()
    var skipPlayerTextField = UITextField()
    
    let resultButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupLabels()
        setupButtons()
        setupTextFields()
        
        
        setupConstraints()
        
    }
    
    //MARK: Set Ups
    func setupLabels() {
        numOfPlayersLabel.text = "Number of players: "
        numOfPlayersLabel.textColor = .orange
        numOfPlayersLabel.font = UIFont(name: numOfPlayersLabel.font.fontName, size: 20)
        view.addSubview(numOfPlayersLabel)
        
        directionLabel.text = "Change direction"
        directionLabel.textColor = .orange
        view.addSubview(directionLabel)
        
        skipPlayerLabel.text = "Skip player"
        skipPlayerLabel.textColor = .orange
        view.addSubview(skipPlayerLabel)
        
        skipPlayerDescLabel.text = "by what number the current nuber should be divisible"
        skipPlayerDescLabel.textColor = .orange
        view.addSubview(skipPlayerDescLabel)
    }
    
    func setupButtons() {
        resultButton.backgroundColor = .orange
        resultButton.setTitle("Result", for: .normal)
        resultButton.setTitleColor(.white, for: .normal)
        resultButton.addTarget(self, action: #selector(resultButtonTapped), for: .touchUpInside)
        view.addSubview(resultButton)
    }
    
    func setupTextFields() {
        numOfPlayersTextField.placeholder = "Enter a number"
        view.addSubview(numOfPlayersTextField)
        
        directionTextField.placeholder = "Enter a number"
        view.addSubview(directionTextField)
        
        skipPlayerTextField.placeholder = "Enter a number"
        view.addSubview(skipPlayerTextField)
    }
    
    //MARK: Constraints
    func setupConstraints() {
        
        numOfPlayersLabel.translatesAutoresizingMaskIntoConstraints = false
        numOfPlayersTextField.translatesAutoresizingMaskIntoConstraints = false
        directionLabel.translatesAutoresizingMaskIntoConstraints = false
        directionTextField.translatesAutoresizingMaskIntoConstraints = false
        skipPlayerLabel.translatesAutoresizingMaskIntoConstraints = false
        skipPlayerTextField.translatesAutoresizingMaskIntoConstraints = false
        skipPlayerDescLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numOfPlayersLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 100),
            numOfPlayersLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            numOfPlayersLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -5),
            numOfPlayersLabel.heightAnchor.constraint(equalToConstant: 20),
            
            numOfPlayersTextField.topAnchor.constraint(equalTo: numOfPlayersLabel.bottomAnchor,constant: 5),
            numOfPlayersTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            numOfPlayersTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -5),
            numOfPlayersLabel.heightAnchor.constraint(equalToConstant: 50),
            
            directionLabel.topAnchor.constraint(equalTo: numOfPlayersTextField.bottomAnchor, constant: 30),
            directionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            directionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -5),
            numOfPlayersLabel.heightAnchor.constraint(equalToConstant: 20),
            
            directionTextField.topAnchor.constraint(equalTo: directionLabel.bottomAnchor,constant: 5),
            directionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            directionTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -5),
            numOfPlayersLabel.heightAnchor.constraint(equalToConstant: 50),
            
            skipPlayerLabel.topAnchor.constraint(equalTo: directionTextField.bottomAnchor,constant: 30),
            skipPlayerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            skipPlayerLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -5),
            numOfPlayersLabel.heightAnchor.constraint(equalToConstant: 20),
            
            skipPlayerTextField.topAnchor.constraint(equalTo: skipPlayerLabel.bottomAnchor,constant: 5),
            skipPlayerTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            skipPlayerTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -5),
            numOfPlayersLabel.heightAnchor.constraint(equalToConstant: 50),
            
            skipPlayerDescLabel.topAnchor.constraint(equalTo: skipPlayerTextField.bottomAnchor, constant: 30),
            skipPlayerDescLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            skipPlayerDescLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -5),
            numOfPlayersLabel.heightAnchor.constraint(equalToConstant: 20),
            
            
        ])
        
        
    }
    
    @objc func resultButtonTapped(){
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
