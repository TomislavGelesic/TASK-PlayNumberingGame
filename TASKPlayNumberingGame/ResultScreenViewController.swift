//
//  ResultScreenViewController.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 08/10/2020.
//

import UIKit

class ResultScreenViewController: UIViewController {

    //MARK: Properties
    let winnerResult: ResultView = {
        let resultView = ResultView()
        resultView.labelDesc.text = "Player who ended the game"
        resultView.translatesAutoresizingMaskIntoConstraints = false
        return resultView
    }()
    
    let directionResult: ResultView = {
        let resultView = ResultView()
        resultView.labelDesc.text = "How many time did the game change direction"
        resultView.translatesAutoresizingMaskIntoConstraints = false
        return resultView
    }()
    
    let skipResult: ResultView = {
        let resultView = ResultView()
        resultView.labelDesc.text = "How many time did player get skipped"
        resultView.translatesAutoresizingMaskIntoConstraints = false
        return resultView
    }()
    
    let resultStack: UIStackView = {
        let stack = UIStackView ()
        stack.axis = .vertical
        stack.spacing = 30
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        resultStack.addArrangedSubview(winnerResult)
        resultStack.addArrangedSubview(directionResult)
        resultStack.addArrangedSubview(skipResult)
        view.addSubview(resultStack)
        
        //MARK: missing constraints
        
    }
    
}
