//
//  ComponentView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 19/10/22.
//

import UIKit
import SnapKit
class ComponentView: UIView {
    
    var labelViews: [UILabel] = []
    
    var numberOfLabelViews = 4 //pesquisar como fazer os defaults bonitinho
    var listPosition: ListOptions = .bottonList
    
    var insideViewProportion = 0.50
    var firstViewMultiplier = 0.50
    var secondViewMultiplier = 0.50
    
    var tempFlag = 2
    
    var padding = 8.0
    
    var radius: CGFloat = 0
    
    var firstViewColor: UIColor = .clear
    var secondViewColor: UIColor = .clear

    
    lazy var firstView = ElementView(color: firstViewColor, radius: radius)
    lazy var secondView = ElementView(color: secondViewColor, radius: radius)

    /*
    lazy var firstView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        //.layer.cornerRadius = 15
        return view
    }()
   
    lazy var secondView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        //view.layer.cornerRadius = 15
        return view
    }()
     */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(numberOfLabelViews: Int, listPosition: ListOptions, mainViewProportion: Double, firstViewColor: UIColor, secondViewColor: UIColor, radius: CGFloat) {
        
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.numberOfLabelViews = numberOfLabelViews
        self.listPosition = listPosition
        self.insideViewProportion = mainViewProportion
        self.firstViewMultiplier = mainViewProportion
        self.firstViewMultiplier *= 0.95
        self.secondViewMultiplier = 1 - mainViewProportion
        self.secondViewMultiplier *= 0.95
        
        self.radius = radius
        self.firstViewColor = firstViewColor
        self.secondViewColor = secondViewColor
        
        setupView()
    }
    
}

extension ComponentView: ViewCode {
    func builldHierarchy() {
        
        addSubview(firstView)
        addSubview(secondView)

    }
    
    func setupConstraint() {
        

        
        if self.listPosition == .bottonList {
            secondView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: secondViewMultiplier).isActive = true
            secondView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
            secondView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
            secondView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
            
            firstView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: firstViewMultiplier).isActive = true
            firstView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor).isActive = true
            firstView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor ).isActive = true
            firstView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            
        } else if self.listPosition == .trailingList {
            secondView.trailingAnchor.constraint(equalTo:safeAreaLayoutGuide.trailingAnchor).isActive = true
            secondView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
            secondView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: secondViewMultiplier).isActive = true
            secondView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
            
            firstView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
            firstView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: firstViewMultiplier).isActive = true
            firstView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
            firstView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        } else if self.listPosition == .insideList {
            secondView.centerXAnchor.constraint(equalTo: firstView.centerXAnchor).isActive = true
            secondView.centerYAnchor.constraint(equalTo: firstView.centerYAnchor).isActive = true
            secondView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: insideViewProportion).isActive = true
            secondView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: insideViewProportion).isActive = true

            firstView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
            firstView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor).isActive = true
            firstView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
            firstView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
            
        }


    }
    
    func setupConfiguration() {
        //
    }
    
    
}
