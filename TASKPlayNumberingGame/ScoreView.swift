//
//  ScoreView.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 12/10/2020.
//

import UIKit

class ScoreView: UIView {

    //MARK:
    let labelDesc: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelBack: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let labelResult: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    //MARK: init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    //MARK: Private functions
    private func setupViews(){
        self.addSubview(labelDesc)
        self.addSubview(labelBack)
        labelBack.addSubview(labelResult)
        
        labelDesc.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        labelDesc.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        labelDesc.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        labelDesc.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        labelBack.topAnchor.constraint(equalTo: labelDesc.bottomAnchor, constant: 10).isActive = true
        labelBack.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        labelBack.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelBack.widthAnchor.constraint(equalToConstant: 40).isActive = true
        labelBack.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        labelResult.topAnchor.constraint(equalTo: labelBack.bottomAnchor, constant: 10).isActive = true
        labelResult.bottomAnchor.constraint(equalTo: labelBack.bottomAnchor,constant: -10).isActive = true
        labelResult.heightAnchor.constraint(equalToConstant: 20).isActive = true
        labelResult.widthAnchor.constraint(equalToConstant: 20).isActive = true
        labelResult.centerXAnchor.constraint(equalTo: labelBack.centerXAnchor).isActive = true
        
        
    }

}
