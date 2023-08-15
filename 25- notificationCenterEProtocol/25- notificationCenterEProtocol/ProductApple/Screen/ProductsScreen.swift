//
//  ProductsScreen.swift
//  25- notificationCenterEProtocol
//
//  Created by Sergio henrique Ferreira on 14/08/23.
//

import UIKit
protocol ProductsScreenProtocol : AnyObject{
    func tappedMackBookButton()
    func tappedIPhoneButton()
}
class ProductsScreen: UIView {
    private weak var delegate : ProductsScreenProtocol?
    public func delegate(delegate : ProductsScreenProtocol){
        self.delegate = delegate
    }
    lazy var titleLabel:UILabel = {
        let lb : UILabel = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Opções de Produtos"
        lb.font = UIFont.systemFont(ofSize: 40)
        lb.textColor = .white
        return lb
        
    }()
    
    lazy var macBookButton:UIButton = {
        let bt : UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedMackBookButton), for: .touchUpInside)
        bt.setImage(UIImage(named: "macbook"), for: .normal)
        return bt
        
    }()
    lazy var iphoneButton:UIButton = {
        let bt : UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedIPhoneButton), for: .touchUpInside)
        bt.setImage(UIImage(named: "iphone"), for: .normal)

        return bt
    }()
    
    
    @objc func tappedMackBookButton(){
        print("macbook")
        delegate?.tappedMackBookButton()
    }
    @objc func tappedIPhoneButton(){
        print("IPhone")
        delegate?.tappedIPhoneButton()
    }
    override init(frame: CGRect) {
        super.init(frame:frame)
        addElements()
        configConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(titleLabel)
        addSubview(macBookButton)
        addSubview(iphoneButton)
    }
    private func configConstrains(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            macBookButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            macBookButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            macBookButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            macBookButton.heightAnchor.constraint(equalToConstant: 150),
            
            iphoneButton.topAnchor.constraint(equalTo: macBookButton.bottomAnchor, constant: 40),
            iphoneButton.leadingAnchor.constraint(equalTo: macBookButton.leadingAnchor),
            iphoneButton.trailingAnchor.constraint(equalTo: macBookButton.trailingAnchor),
            iphoneButton.heightAnchor.constraint(equalToConstant: 300),
            iphoneButton.widthAnchor.constraint(equalToConstant: 150)
            
            
            
        
        ])
    }
    
}
