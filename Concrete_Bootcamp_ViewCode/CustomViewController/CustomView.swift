//
//  CustomView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 19/10/22.
//

import UIKit
import SnapKit

class CustomView: UIView {
    
    lazy var mainComponent = ComponentView(numberOfLabelViews: 1, listPosition: .bottonList, mainViewProportion: 0.6)
    lazy var internalHorizontalComponent = ComponentView(numberOfLabelViews: 1, listPosition: .trailingList,mainViewProportion: 0.3)

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
        addSubview(mainComponent)
        mainComponent.firstView.addSubview(internalHorizontalComponent)

    }
    
    func setupConstraint() {
        /*
        component.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.centerX.equalToSuperview()
        }*/
        
        mainComponent.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainComponent.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        mainComponent.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
        mainComponent.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.9).isActive = true

        
        internalHorizontalComponent.topAnchor.constraint(equalTo: mainComponent.firstView.topAnchor).isActive = true
        internalHorizontalComponent.heightAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5).isActive = true

        
        internalHorizontalComponent.leadingAnchor.constraint(equalTo: mainComponent.firstView.leadingAnchor).isActive = true
        internalHorizontalComponent.widthAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.widthAnchor).isActive = true
        
        
        
        
    }
    
    func setupConfiguration() {
        self.backgroundColor = .gray
        self.internalHorizontalComponent.firstView.backgroundColor = .cyan
    }
    
}
