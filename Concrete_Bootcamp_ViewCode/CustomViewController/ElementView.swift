//
//  ElementView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 25/10/22.
//

import UIKit

class ElementView: UIView {


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, radius: CFloat) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .blue
        self.layer.cornerRadius = 15
        
        //setupView()
    }
    
}

extension ElementView: ViewCode {
    func builldHierarchy() {
        

    }
    
    func setupConstraint() {
        

        

    }
    
    func setupConfiguration() {
        //
    }
    
    
}
