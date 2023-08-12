//
//  LoginScreen.swift
//  23-navegacao
//
//  Created by Sergio henrique Ferreira on 11/08/23.
//

import UIKit
protocol LoginScreenProtocol : AnyObject{
    func tappedToGoScreen()
}
class LoginScreen: UIView {
    private weak var delegate:LoginScreenProtocol?
    public func delegate(delegate: LoginScreenProtocol?){
        self.delegate = delegate
    }
    lazy var nameLabel :UILabel = {
        let lb: UILabel = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        lb.textColor = .white
        lb.text = "Clique no botão"
        return lb
    }()
    lazy var toGoPageButton:UIButton = {
        let bt : UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Proximá Página", for: .normal)
        bt.backgroundColor = .darkGray
        bt.setTitleColor(.white, for: .normal)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 40/2
        bt.addTarget(self, action: #selector(tappedToGoPageButton), for: .touchUpInside)
        return bt
    }()
    @objc func tappedToGoPageButton(_ sender : UIButton){
        print("acesso1")
        delegate?.tappedToGoScreen()   
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(nameLabel)
        addSubview(toGoPageButton)
    }
    private func configConstraints(){
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        
            toGoPageButton.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 50),
            toGoPageButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            toGoPageButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            toGoPageButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }
}
