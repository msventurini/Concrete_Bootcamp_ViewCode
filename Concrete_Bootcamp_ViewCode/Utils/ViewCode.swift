//
//  ViewCode.swift
//  Concrete_Bootcamp_ViewCode
//
//  Created by Matheus Silveira Venturini on 19/10/22.
//

import Foundation

protocol ViewCode {
    func builldHierarchy()
    func setupConstraint()
    func setupConfiguration()
}

extension ViewCode {
    func setupView() {
        builldHierarchy()
        setupConstraint()
        setupConfiguration()
    }
}
