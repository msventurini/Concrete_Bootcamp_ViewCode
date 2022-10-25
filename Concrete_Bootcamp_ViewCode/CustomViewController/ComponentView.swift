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

    
    lazy var topView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var bottomView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
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
    
    init(numberOfLabelViews: Int) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.numberOfLabelViews = numberOfLabelViews
        setupView()
    }
    
}

extension ComponentView: ViewCode {
    func builldHierarchy() {
        
        addSubview(topView)
        addSubview(bottomView)

    }
    
    func setupConstraint() {
        
        let topViewMultiplier = 0.60
        let bottomViewMultiplier = 0.40

        
        bottomView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: bottomViewMultiplier).isActive = true
        bottomView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        bottomView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true

        topView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: topViewMultiplier).isActive = true
        topView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor).isActive = true
        topView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor ).isActive = true
        topView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        


    }
    
    func setupConfiguration() {
        //
    }
    
    
}
