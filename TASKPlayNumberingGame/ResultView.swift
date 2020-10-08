//
//  ResultView.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 08/10/2020.
//

import UIKit

class ResultView: UIView {
    
    //MARK: Properties
    let labelDesc: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelResult: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.backgroundColor = .orange
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
        self.addSubview(labelResult)
        
        labelDesc.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        labelDesc.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        labelDesc.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        labelResult.topAnchor.constraint(equalTo: labelDesc.bottomAnchor, constant: 5).isActive = true
        labelResult.widthAnchor.constraint(equalToConstant: 50).isActive = true
        labelResult.heightAnchor.constraint(equalToConstant: 50).isActive = true
        labelResult.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
