//
//  ResultViewController.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 12/10/2020.
//

import UIKit

class ResultViewController: UIViewController {

    //MARK: Properties
    let parentImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let dimmerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.darkGray.withAlphaComponent(0.7)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let resultStack: UIStackView = {
        let stack = UIStackView ()
        stack.axis = .vertical
        stack.spacing = 30
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let winnerResult: ScoreView = {
        let resultView = ScoreView()
        resultView.labelDesc.text = "Player who ended the game"
        resultView.translatesAutoresizingMaskIntoConstraints = false
        return resultView
    }()
    
    let directionResult: ScoreView = {
        let resultView = ScoreView()
        resultView.labelDesc.text = "How many time did the game change direction"
        resultView.translatesAutoresizingMaskIntoConstraints = false
        return resultView
    }()
    
    let skipResult: ScoreView = {
        let resultView = ScoreView()
        resultView.labelDesc.text = "How many time did player get skipped"
        resultView.translatesAutoresizingMaskIntoConstraints = false
        return resultView
    }()
    
    //MARK: init
    init(winner: Int, skipped: Int, changedDirection: Int ) {
        super.init(nibName: nil, bundle: nil)
        winnerResult.labelResult.text = String(winner)
        directionResult.labelResult.text = String(changedDirection)
        skipResult.labelResult.text = String(skipped)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(parentImage)
        parentImage.addSubview(dimmerView)
        dimmerView.addSubview(contentView)
        
        contentView.backgroundColor = .white
        
        contentView.addSubview(resultStack)
        resultStack.addArrangedSubview(winnerResult)
        resultStack.addArrangedSubview(directionResult)
        resultStack.addArrangedSubview(skipResult)
        
        setConstraints()
    }
    //MARK: Functions
    func setConstraints() {
        parentImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        parentImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        parentImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        parentImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        dimmerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        dimmerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        dimmerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        dimmerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        contentView.bottomAnchor.constraint(equalTo: dimmerView.bottomAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: dimmerView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: dimmerView.trailingAnchor).isActive = true
        
        resultStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -20).isActive = true
        resultStack.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        resultStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        resultStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        resultStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.resignFirstResponder()
        dismiss(animated: false, completion: nil)
    }


}
