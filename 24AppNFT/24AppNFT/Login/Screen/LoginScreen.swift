//
//  LoginScreen.swift
//  24AppNFT
//
//  Created by Sergio henrique Ferreira on 12/08/23.
//

import UIKit
protocol LoginScreenProtocol : AnyObject {
    func tappedLogin()
    func tappedRecoverPasswordButton()
   
}
class LoginScreen: UIView {
    
    private weak var delegate : LoginScreenProtocol?
    public func delegate(delegate:LoginScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var subImageView:UIImageView = {
        let image :UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG Login 1")
        return image
    }()
    
    lazy var logoAppImageView:UIImageView = {
        let image : UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Vector (1)" )
        return image
    }()
    
    lazy var loginLabel:UILabel = {
        let lb : UILabel = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "BF NFT"
        lb.font = UIFont.boldSystemFont(ofSize: 40)
        lb.textColor = .white
        
    
        return lb
        
        
        
    }()
    
    lazy var descriptionLabel : UILabel = {
        let lb : UILabel = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Marketplace da NFTs da BackFront Academy"
        lb.adjustsFontSizeToFitWidth = true
        lb.textAlignment = .center
        lb.minimumScaleFactor = 0.5
        lb.font = UIFont.systemFont(ofSize: 20)
        lb.textColor = .white
        return lb
        
    }()
    
    lazy var loginTextField :UITextField = {
        let tf:UITextField = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 40/2
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        tf.textAlignment = .left
        tf.attributedPlaceholder = NSAttributedString(string: "Login",attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.5)])// Mudar a cor do texto do placeHolder
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1)//uma cor já pré-definida
        tf.textColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.autocorrectionType = .no
        
        return tf
    }()
    
    lazy var passwordTextField :UITextField = {
        let tf :UITextField = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 40/2
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        tf.attributedPlaceholder = NSAttributedString(string: "Login",attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.5)])// Mudar a cor do texto do placeHolder
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1)//uma cor já pré-definida
        tf.textColor = .white
        tf.textAlignment = .left
        tf.placeholder = "Senha"
        tf.borderStyle = .roundedRect
        tf.autocorrectionType = .no
        tf.isSecureTextEntry = true
        tf.keyboardType = .default
        return tf
    }()
    
    lazy var recoverPasswordButton : UIButton = {
        let bt : UIButton = UIButton(type: .system)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Recupar Senha", for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 15)
        bt.setTitleColor(.purple, for: .normal)
        bt.addTarget(self, action: #selector(tappedRecoverPasswordButton), for: .touchUpInside)
        bt.backgroundColor = .none
        return bt
    }()
  
    
    lazy var loginButton:UIButton = {
        let bt : UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        bt.setTitle("Entrar", for: .normal)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 40/2
        bt.layer.borderWidth = 0.5
        bt.layer.borderColor = UIColor.white.cgColor
        bt.titleLabel?.textColor = .white
        bt.titleLabel?.font = .boldSystemFont(ofSize: 20)
//        bt.setImage(UIImage(named: "bgbutton"), for: .normal)
        bt.setBackgroundImage(UIImage(named: "bgbutton"), for: .normal)
        return bt
    }()
    
    lazy var lineView : UIView = {
        let view : UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    //poderia ser feito
    
    lazy var singImageMesk:UIView = {
        let view  = UIView()
        view.translatesAutoresizingMaskIntoConstraints = true
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.purple.cgColor
        view.layer.borderWidth = 2
        
        return view
    }()
     
     
    
    
    lazy var backImage:UIImageView = {
        let image :UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoM")
        return image
    }()
    lazy var metameskButton:UIButton = {
        let bt :UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
//        bt.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        bt.setTitle("Metamask", for: .normal)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 40/2
        bt.layer.borderWidth = 2
        bt.layer.borderColor = UIColor.purple.cgColor
        bt.titleLabel?.textColor = .white
        bt.titleLabel?.font = .boldSystemFont(ofSize: 20)
        bt.backgroundColor = .none
       
        return bt
    }()
    
    
    @objc func tappedRecoverPasswordButton(_ sender : UIButton){
        print("Recuperar")
        delegate?.tappedRecoverPasswordButton()
        
    }
    
    @objc func tappedLoginButton(_ sender : UIButton){
        print("entrar")
        delegate?.tappedLogin()
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(subImageView)
        addSubview(logoAppImageView)
        addSubview(loginLabel)
        addSubview(descriptionLabel)
        addSubview(loginTextField)
        addSubview(passwordTextField)
        addSubview(recoverPasswordButton)
        addSubview(loginButton)
        addSubview(lineView)
        addSubview(backImage)
        addSubview(metameskButton)
        
        // como add dentro de uma view um elements
        // ex singView.addSubview(singImage)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            subImageView.topAnchor.constraint(equalTo:topAnchor, constant: 0),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 55),
            logoAppImageView.heightAnchor.constraint(equalToConstant: 108),
            logoAppImageView.widthAnchor.constraint(equalToConstant: 108),
            logoAppImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            loginLabel.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor,constant: 30),
            loginLabel.centerXAnchor.constraint(equalTo: logoAppImageView.centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor,constant: 13),
            descriptionLabel.centerXAnchor.constraint(equalTo: logoAppImageView.centerXAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            loginTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30),
            loginTextField.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            loginTextField.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            loginTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: loginTextField.heightAnchor),
            
            recoverPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
            recoverPasswordButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -15),
            
            loginButton.topAnchor.constraint(equalTo: recoverPasswordButton.bottomAnchor,constant: 40),
            loginButton.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            loginButton.heightAnchor.constraint(equalTo: loginTextField.heightAnchor),
            
            lineView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 40),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 64),
            lineView.trailingAnchor.constraint(equalTo:trailingAnchor,constant: -64),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            
            backImage.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 40),
            backImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            

            metameskButton.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 40 ),
            metameskButton.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            metameskButton.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            metameskButton.heightAnchor.constraint(equalTo: loginTextField.heightAnchor),
            
        ])
    }
}

