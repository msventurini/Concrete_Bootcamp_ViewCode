//
//  ComponentView.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 19/10/22.
//

import UIKit

class ComponentView: UIView {

    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var labelView: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.text = "Hello World!"
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

extension ComponentView: ViewCode {
    func builldHierarchy() {
        addSubview(imageView)
        addSubview(labelView)
    }
    
    func setupConstraint() {
        /* coloca texto sobre a imageview no centro da tela
        labelView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        labelView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        imageView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
         */
        
        /* coloca a imageview no topo da tela
        imageView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        */
        
        /* coloca a labelView grudada na parte debaixo da ImageView
        labelView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        labelView.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        
        imageView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        */
        /* coloca a labelView grudada na parte debaixo da ImageView e deixa as bordas alinhadas

        labelView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        labelView.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        labelView.widthAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
        
        imageView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
         
        */

        //mesma coisa, só que de forma diferente
        labelView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        labelView.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        //labelView.widthAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
        labelView.leftAnchor.constraint(equalTo: imageView.leftAnchor).isActive = true
        labelView.rightAnchor.constraint(equalTo: imageView.rightAnchor).isActive = true
        
        
        imageView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    func setupConfiguration() {
        //
    }
    
    
}
