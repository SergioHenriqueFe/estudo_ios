//
//  LoginScreen.swift
//  22ViewCode-PrieiroElemento
//
//  Created by Sergio henrique Ferreira on 03/08/23.
//

import UIKit

//MARK: 1 passo para ação do button - Crianção de protocolo para delegar
//nomeação de procolo == nomedaClass+Protocol, ex: LoginScreenProtocol, pq AnyObject para por waak = (referencia fraca)


protocol LoginScreenProtocol: AnyObject{
    func tappedLoginButton()
}

// MARK: 1 passo criar a a class em NSobjete
class LoginScreen: UIView {
    
    //MARK: 2 passo para ação do button - criar o delegate
    private weak var delegate: LoginScreenProtocol?
    public func delegate(delegate: LoginScreenProtocol?){
        self.delegate = delegate
    }
    
// MARK: 3 passo :  criar lazy para criar o elemento 
    
    //lazy para algo preguiçoso, ganha vida quando é utilizado, caso  o contrario o compilador nao sabe o qu tem dentro dele
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // desabilite a responsividade deixando que a label obedeça o mue código, valido para todos os tipo de elemento
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    lazy var emailTextFiled : UITextField = {
        let textFiled = UITextField()
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        textFiled.autocorrectionType = .no //ativar ou desativar correções da escrita
        textFiled.backgroundColor = .white
        textFiled.borderStyle = .roundedRect
        textFiled.keyboardType = .emailAddress
        textFiled.placeholder = "Digite seu email"
        textFiled.textColor = .darkGray
        
        return textFiled
    }()
    
    lazy var passwordTextField : UITextField = {
        let textFiled = UITextField()
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        textFiled.autocorrectionType = .no //ativar ou desativar correções da escrita
        textFiled.backgroundColor = .white
        textFiled.borderStyle = .roundedRect
        textFiled.keyboardType = .emailAddress
        textFiled.placeholder = "Digite sua senha"
        textFiled.isSecureTextEntry = true
        textFiled.textColor = .darkGray
        
        return textFiled
    }()
    
    lazy var loginButton: UIButton = {
        let button :UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true // é para trabalhar com arredondamentos
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
        
    }()
    @objc func tappedLoginButton(_ sender: UIButton){
       
    }
    
    //MARK: 2 passo
    // criar o inicializador/Construtor
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        addElements()
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//MARK: 4 passo  add elemento
    private func addElements(){
        addSubview(loginLabel)
        addSubview(emailTextFiled)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
    }
    
//MARK: 5 passo
    private func configContraints(){
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),// topAchor falando que é o top , equalTo - referenciando a algo, contante é a distância
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            // centerXAnchor para centralizar no eixo x
            
            emailTextFiled.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant:  45),
            emailTextFiled.leadingAnchor.constraint(equalTo:  leadingAnchor, constant: 20),
            emailTextFiled.trailingAnchor.constraint(equalTo:  trailingAnchor, constant: -20),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextFiled.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextFiled.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo:emailTextFiled.trailingAnchor),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            loginButton.leadingAnchor.constraint(equalTo: emailTextFiled.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo:emailTextFiled.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
//MARK: Criação do delegate para textField
    public func configTextFiledDelegate(delegate: UITextFieldDelegate){
        emailTextFiled.delegate = delegate
        passwordTextField.delegate = delegate
        
    }
}

//MARK: 6 passo acessar logi
