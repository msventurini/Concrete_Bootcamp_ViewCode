//
//  CustomView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 19/10/22.
//

import UIKit

class CustomView: UIView {
    
    lazy var component: ComponentView = {
        let view = ComponentView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

extension CustomView: ViewCode {
    func builldHierarchy() {
        addSubview(component)

    }
    
    func setupConstraint() {
        component.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        component.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    
    func setupConfiguration() {
        self.backgroundColor = .gray
    }
    
}
