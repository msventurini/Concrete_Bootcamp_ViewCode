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
    
    init(numberOfLabelViews: Int) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.numberOfLabelViews = numberOfLabelViews
        setupView()
    }
    
}

extension ComponentView: ViewCode {
    func builldHierarchy() {
        
        addSubview(view)
        
        for i in stride(from: 0, to: numberOfLabelViews, by: 1) {
            labelViews.append({
                let view = UILabel(frame: .zero)
                view.translatesAutoresizingMaskIntoConstraints = false
                view.backgroundColor = .red
                view.text = "Hello World!"
                return view
            }())
            addSubview(labelViews[i])

        }

    }
    
    func setupConstraint() {
        
        let viewMultiplier = 0.60
        //let labelMultiplier = (1.0 - viewMultiplier) / Double(numberOfLabelViews)
        let labelMultiplier: CGFloat = 0.40 / CGFloat(numberOfLabelViews)

        
        for i in stride(from: (numberOfLabelViews - 1), to: 0, by: -1) {
            labelViews[i].topAnchor.constraint(equalTo: labelViews[i-1].bottomAnchor).isActive = true
            labelViews[i].heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: labelMultiplier).isActive = true
            labelViews[i].leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
            labelViews[i].rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        }

        labelViews[0].topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        labelViews[0].heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: labelMultiplier).isActive = true
        labelViews[0].leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        labelViews[0].rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true

        view.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: viewMultiplier).isActive = true
        view.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor).isActive = true
        view.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor ).isActive = true
        view.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        


    }
    
    func setupConfiguration() {
        //
    }
    
    
}
