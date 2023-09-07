//
//  LoginScreen.swift
//  TelaDeLoginViewCode + Cocoapods
//
//  Created by Sergio henrique Ferreira on 07/09/23.
//

import UIKit
import SnapKit

protocol LoginScreenProtocol: AnyObject {
    func tappedLoginButton()
}

class LoginScreen: UIView {
    
    private weak var delegate: LoginScreenProtocol?
    
    public func delegate(delegate: LoginScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.placeholder = "Digite seu email:"
        tf.textColor = .darkGray
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.placeholder = "Digite sua senha:"
        tf.isSecureTextEntry = true
        tf.textColor = .darkGray
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let button: UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.isEnabled = false
        button.backgroundColor = .darkGray.withAlphaComponent(0.6)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLoginButton(_ sender: UIButton) {
        print("Botao funcionandooooo")
        delegate?.tappedLoginButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        addElements()
        configLoginLabelConstraints()
        configEmailTextFieldConstaints()
        configPasswordTextFieldConstraints()
        configLoginButtonConstraints()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(loginLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
    }
//     Contrução de constraints de maneira NATIVA IOS
//    private func configConstraints() {
//       
//        NSLayoutConstraint.activate([
//            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
//            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
//            emailTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 45),
//            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
//            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
//            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
//            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
//            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
//            
//            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
//            loginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
//            loginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
//            loginButton.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
//        ])
//    }
    
    //Criação de constraints utilizando o SnapKit(framework)
    // contante : offset = valores positivos e inset = valores negativos
    
    // padrão
    private func configLoginLabelConstraints(){
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(20)
            make.centerX.equalToSuperview()
        }
    }
    
    private func configEmailTextFieldConstaints(){
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(45)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }
    
    private func configPasswordTextFieldConstraints(){
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.leading.equalTo(emailTextField.snp.leading)
            make.trailing.equalTo(emailTextField.snp.trailing)
            make.height.equalTo(emailTextField.snp.height)
        }
    }
    
    private func configLoginButtonConstraints(){
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(50)
            make.leading.equalTo(emailTextField.snp.leading)
            make.trailing.equalTo(emailTextField.snp.trailing)
            make.height.equalTo(emailTextField.snp.height)
        }
        
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
    
}

