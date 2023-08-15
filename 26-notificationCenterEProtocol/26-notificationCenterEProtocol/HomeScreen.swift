//
//  HomeScreen.swift
//  26-notificationCenterEProtocol
//
//  Created by Sergio henrique Ferreira on 14/08/23.
//

import UIKit

protocol HomeScreenProtocol : AnyObject {
    func tappedChooseButton()
}

class HomeScreen: UIView {

    private weak var delegate:HomeScreenProtocol?
    
    public func delegate (delegate:HomeScreenProtocol){
        self.delegate = delegate
    }
    lazy var logoImageView : UIImageView  = {
        let image:UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "Apple-Logo")?.withRenderingMode(.alwaysTemplate)
        image.tintColor = .white
        return image
    }()
    
    lazy var descriptionLabel:UILabel = {
        let lb :UILabel = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textColor = .black
        lb.font = UIFont.boldSystemFont(ofSize: 40)
        lb.textAlignment = .center
        return lb
    }()
    
    lazy var chooseButton:UIButton = {
        let bt :UIButton = UIButton(type: .system)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedChooseButton), for: .touchUpInside)
        bt.setTitle("Clique aqui", for: .normal)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 40/2
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = .white
        bt.titleLabel?.textAlignment = .center
        return bt
    }()
    @objc func tappedChooseButton(_ sender: UIButton){
        delegate?.tappedChooseButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(logoImageView)
        addSubview(descriptionLabel)
        addSubview(chooseButton)
    }
    private func configConstrains(){
        NSLayoutConstraint.activate([
            
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant:  -100),
            logoImageView.heightAnchor.constraint(equalToConstant: 250),
            logoImageView.widthAnchor.constraint(equalToConstant: 250),
            
            descriptionLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant:  20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            chooseButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -80),
            chooseButton.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            chooseButton.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            chooseButton.heightAnchor.constraint(equalToConstant: 40)
            
            
        ])
    }
    
}
