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
    
    init(color: UIColor, radius: CGFloat) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = color
        self.layer.cornerRadius = radius
        
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
