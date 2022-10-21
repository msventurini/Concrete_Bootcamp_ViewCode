//
//  CustomView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 19/10/22.
//

import UIKit
import SnapKit

class CustomView: UIView {
    
    lazy var component = ComponentView(frame: .zero)
    
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
        /*
        component.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.centerX.equalToSuperview()
        }*/
        
        component.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        component.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        component.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
        
        component.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.9).isActive = true

        
    }
    
    func setupConfiguration() {
        self.backgroundColor = .gray
    }
    
}
