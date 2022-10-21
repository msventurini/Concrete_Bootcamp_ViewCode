//
//  SolidColorView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 21/10/22.
//

import UIKit

class SolidColorView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension SolidColorView: ViewCode {
    func builldHierarchy() {
        
    }
    
    func setupConstraint() {
  

    }
    
    func setupConfiguration() {
        //
    }
    
    
}
