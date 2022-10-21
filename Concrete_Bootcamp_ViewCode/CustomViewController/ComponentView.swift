//
//  ComponentView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 19/10/22.
//

import UIKit
import SnapKit
class ComponentView: UIView {

    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        view.layer.cornerRadius = 10
        view.layer.cornerCurve = .continuous
        return view
    }()
    
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
        addSubview(imageView)
        addSubview(labelView)
        imageView.addSubview(view)
    }
    
    func setupConstraint() {
  
        labelView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10).isActive = true
        labelView.leftAnchor.constraint(equalTo: imageView.leftAnchor).isActive = true
        labelView.rightAnchor.constraint(equalTo: imageView.rightAnchor).isActive = true
        labelView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        imageView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        view.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 5).isActive = true
        view.leftAnchor.constraint(equalTo: imageView.leftAnchor, constant: 5).isActive = true
        view.rightAnchor.constraint(equalTo: imageView.rightAnchor, constant: -5).isActive = true
        view.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -5).isActive = true

    }
    
    func setupConfiguration() {
        //
    }
    
    
}
