//
//  CustomView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 19/10/22.
//

import UIKit
import SnapKit

class CustomView: UIView {
    
    lazy var mainComponent = ComponentView(numberOfLabelViews: 1, listPosition: .bottonList, mainViewProportion: 0.9)
    lazy var horizontalComponent = ComponentView(numberOfLabelViews: 1, listPosition: .trailingList,mainViewProportion: 0.3)
    lazy var leadingVerticalComponent = ComponentView(numberOfLabelViews: 1, listPosition: .bottonList,mainViewProportion: 0.6)
    lazy var centerVerticalComponent = ComponentView(numberOfLabelViews: 1, listPosition: .bottonList,mainViewProportion: 0.6)
    lazy var trailingVerticalComponent = ComponentView(numberOfLabelViews: 1, listPosition: .bottonList,mainViewProportion: 0.6)

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
        mainComponent.firstView.addSubview(horizontalComponent)
        mainComponent.firstView.addSubview(leadingVerticalComponent)
        mainComponent.firstView.addSubview(centerVerticalComponent)
        mainComponent.firstView.addSubview(trailingVerticalComponent)

    }
    
    func setupConstraint() {
        
        mainComponent.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainComponent.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        mainComponent.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
        mainComponent.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.9).isActive = true

        
        horizontalComponent.topAnchor.constraint(equalTo: mainComponent.firstView.topAnchor).isActive = true
        horizontalComponent.heightAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2).isActive = true

        horizontalComponent.leadingAnchor.constraint(equalTo: mainComponent.firstView.leadingAnchor).isActive = true
        horizontalComponent.widthAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.widthAnchor).isActive = true
                
        leadingVerticalComponent.trailingAnchor.constraint(equalTo: centerVerticalComponent.leadingAnchor).isActive = true
        leadingVerticalComponent.widthAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3).isActive = true

        leadingVerticalComponent.heightAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
        leadingVerticalComponent.topAnchor.constraint(equalTo: horizontalComponent.bottomAnchor).isActive = true
        
        centerVerticalComponent.centerXAnchor.constraint(equalTo: mainComponent.firstView.centerXAnchor).isActive = true
        centerVerticalComponent.widthAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3).isActive = true
        
        centerVerticalComponent.heightAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
        centerVerticalComponent.topAnchor.constraint(equalTo: horizontalComponent.bottomAnchor).isActive = true
        
        trailingVerticalComponent.leadingAnchor.constraint(equalTo: centerVerticalComponent.trailingAnchor).isActive = true
        trailingVerticalComponent.widthAnchor.constraint(equalTo: mainComponent.firstView.widthAnchor, multiplier: 0.3).isActive = true
        
        trailingVerticalComponent.heightAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
        trailingVerticalComponent.topAnchor.constraint(equalTo: horizontalComponent.bottomAnchor).isActive = true
        
    }
    
    func setupConfiguration() {
        self.backgroundColor = .gray
        self.horizontalComponent.firstView.backgroundColor = .cyan
        self.leadingVerticalComponent.firstView.backgroundColor = .green
        self.centerVerticalComponent.firstView.backgroundColor = .yellow
        self.trailingVerticalComponent.firstView.backgroundColor = .magenta
        
    }
    
}
