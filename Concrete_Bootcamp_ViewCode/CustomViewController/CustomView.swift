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
    
    lazy var VHCSubView = ComponentView(numberOfLabelViews: 1, listPosition: .bottonList, mainViewProportion: 0.5)
    lazy var HHCSubView = ComponentView(numberOfLabelViews: 1, listPosition: .trailingList, mainViewProportion: 0.5)

    lazy var LVCSubview = ComponentView(numberOfLabelViews: 1, listPosition: .bottonList, mainViewProportion: 0.5)
    lazy var CVCSubview = ComponentView(numberOfLabelViews: 1, listPosition: .bottonList, mainViewProportion: 0.5)
    lazy var TVCSubview = ComponentView(numberOfLabelViews: 1, listPosition: .bottonList, mainViewProportion: 0.5)


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
        
        horizontalComponent.addSubview(VHCSubView)
        horizontalComponent.addSubview(HHCSubView)

        leadingVerticalComponent.addSubview(LVCSubview)
        centerVerticalComponent.addSubview(CVCSubview)
        trailingVerticalComponent.addSubview(TVCSubview)
        
    }
    
    func setupConstraint() {

        let padding = 8.0
        
        mainComponent.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainComponent.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        mainComponent.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
        mainComponent.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.9).isActive = true

        
        horizontalComponent.topAnchor.constraint(equalTo: mainComponent.firstView.topAnchor, constant: padding).isActive = true
        horizontalComponent.heightAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2).isActive = true

        horizontalComponent.leadingAnchor.constraint(equalTo: mainComponent.firstView.leadingAnchor, constant: padding).isActive = true
        horizontalComponent.trailingAnchor.constraint(equalTo: mainComponent.firstView.trailingAnchor, constant: -padding).isActive = true

        leadingVerticalComponent.leadingAnchor.constraint(equalTo: horizontalComponent.leadingAnchor).isActive = true
        leadingVerticalComponent.widthAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3).isActive = true

        leadingVerticalComponent.heightAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
        leadingVerticalComponent.topAnchor.constraint(equalTo: horizontalComponent.bottomAnchor, constant: padding).isActive = true
        
        centerVerticalComponent.centerXAnchor.constraint(equalTo: mainComponent.firstView.centerXAnchor).isActive = true
        centerVerticalComponent.widthAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3).isActive = true
        
        centerVerticalComponent.heightAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
        centerVerticalComponent.topAnchor.constraint(equalTo: horizontalComponent.bottomAnchor, constant: padding).isActive = true
        
        trailingVerticalComponent.trailingAnchor.constraint(equalTo: horizontalComponent.trailingAnchor).isActive = true
        trailingVerticalComponent.widthAnchor.constraint(equalTo: mainComponent.firstView.widthAnchor, multiplier: 0.3).isActive = true
        
        trailingVerticalComponent.heightAnchor.constraint(equalTo: mainComponent.firstView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
        trailingVerticalComponent.topAnchor.constraint(equalTo: horizontalComponent.bottomAnchor, constant: padding).isActive = true
        
        
        VHCSubView.topAnchor.constraint(equalTo: horizontalComponent.secondView.topAnchor).isActive = true
        //VHCSubView.bottomAnchor.constraint(equalTo: HHCSubView.topAnchor).isActive = true
        VHCSubView.heightAnchor.constraint(equalTo: horizontalComponent.secondView.heightAnchor, multiplier: 0.66).isActive = true

        VHCSubView.leadingAnchor.constraint(equalTo: horizontalComponent.secondView.leadingAnchor).isActive = true
        VHCSubView.trailingAnchor.constraint(equalTo: horizontalComponent.secondView.trailingAnchor).isActive = true
        
        HHCSubView.topAnchor.constraint(equalTo: VHCSubView.bottomAnchor).isActive = true
        //HHCSubView.bottomAnchor.constraint(equalTo: horizontalComponent.secondView.bottomAnchor).isActive = true
        
        HHCSubView.heightAnchor.constraint(equalTo: horizontalComponent.secondView.heightAnchor, multiplier: 0.33).isActive = true

        
        
        HHCSubView.leadingAnchor.constraint(equalTo: horizontalComponent.secondView.leadingAnchor).isActive = true
        HHCSubView.trailingAnchor.constraint(equalTo: horizontalComponent.secondView.trailingAnchor).isActive = true
        
        
        LVCSubview.topAnchor.constraint(equalTo: leadingVerticalComponent.secondView.topAnchor).isActive = true
        LVCSubview.bottomAnchor.constraint(equalTo: leadingVerticalComponent.secondView.bottomAnchor).isActive = true
        LVCSubview.leadingAnchor.constraint(equalTo: leadingVerticalComponent.secondView.leadingAnchor).isActive = true
        LVCSubview.trailingAnchor.constraint(equalTo: leadingVerticalComponent.secondView.trailingAnchor).isActive = true
        
        CVCSubview.topAnchor.constraint(equalTo: centerVerticalComponent.secondView.topAnchor).isActive = true
        CVCSubview.bottomAnchor.constraint(equalTo: centerVerticalComponent.secondView.bottomAnchor).isActive = true
        CVCSubview.leadingAnchor.constraint(equalTo: centerVerticalComponent.secondView.leadingAnchor).isActive = true
        CVCSubview.trailingAnchor.constraint(equalTo: centerVerticalComponent.secondView.trailingAnchor).isActive = true
        
        TVCSubview.topAnchor.constraint(equalTo: trailingVerticalComponent.secondView.topAnchor).isActive = true
        TVCSubview.bottomAnchor.constraint(equalTo: trailingVerticalComponent.secondView.bottomAnchor).isActive = true
        TVCSubview.leadingAnchor.constraint(equalTo: trailingVerticalComponent.secondView.leadingAnchor).isActive = true
        TVCSubview.trailingAnchor.constraint(equalTo: trailingVerticalComponent.secondView.trailingAnchor).isActive = true
        
        
        
        
    }
    
    func setupConfiguration() {
        self.backgroundColor = .gray
        self.horizontalComponent.firstView.backgroundColor = .cyan
        
        //tirar esse abaixo depois
        self.mainComponent.firstView.backgroundColor = .brown
        
        self.horizontalComponent.firstView.backgroundColor = .cyan
        self.horizontalComponent.secondView.backgroundColor = .black
        
        self.leadingVerticalComponent.firstView.backgroundColor = .cyan
        self.leadingVerticalComponent.secondView.backgroundColor = .black

        self.centerVerticalComponent.firstView.backgroundColor = .cyan
        self.centerVerticalComponent.secondView.backgroundColor = .black

        
        
        self.trailingVerticalComponent.firstView.backgroundColor = .cyan
        self.trailingVerticalComponent.secondView.backgroundColor = .black

    }
    
}
