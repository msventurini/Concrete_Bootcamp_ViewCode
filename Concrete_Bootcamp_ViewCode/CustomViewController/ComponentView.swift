//
//  ComponentView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 19/10/22.
//

import UIKit
import SnapKit
class ComponentView: UIView {

    lazy var labelView: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.text = "Hello World!"
        return view
    }()
    
    lazy var view: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        view.layer.cornerRadius = 15
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

extension ComponentView: ViewCode {
    func builldHierarchy() {
        
        addSubview(view)
        addSubview(labelView)

        
    }
    
    func setupConstraint() {
  
        labelView.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        labelView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        labelView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        labelView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        view.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.75).isActive = true
        view.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor).isActive = true
        view.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        view.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        


    }
    
    func setupConfiguration() {
        //
    }
    
    
}
