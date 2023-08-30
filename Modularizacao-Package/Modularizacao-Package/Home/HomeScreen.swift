//
//  HomeScreen.swift
//  modularizacao-Package
//
//  Created by Sergio henrique Ferreira on 28/08/23.
//

import UIKit
import SDKDMS

class HomeScreen: UIView {
    
    lazy var titleLabel:UILabel = {
       let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints  = false
        lb.text = DSM.titleHoloe
        
        return lb
        
    }()
    lazy var nameTextField:UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints  = false
        tf.placeholder = "Informe o E-mail"
        return tf
    }()
    lazy var passwordTextField:UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints  = false
        tf.placeholder = "Informe a Senha"
        return tf
    }()

    
    lazy var pressButton : UIButton = {
        let bt = UIButton()
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        addElementes()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElementes(){
        addSubview(titleLabel)
    }
    private func configConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100)
            
        ])
    }
    
}
