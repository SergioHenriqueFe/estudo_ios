//
//  HomeScreen.swift
//  25- notificationCenterEProtocol
//
//  Created by Sergio henrique Ferreira on 14/08/23.
//

import UIKit
protocol HomeScreeProtocol :AnyObject{
    
    func tappedToGoPageButton()
}

class HomeScreen: UIView {
    
    private weak var delegate : HomeScreeProtocol?
    public func delegate(delegate :HomeScreeProtocol?){
        self.delegate = delegate
    }
    
    lazy var brandImageView :UIImageView = {
        let image: UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "AppleBrand")
        return image
        
    }()
    
    lazy var titleBrandLabel :UILabel = {
        let lb : UILabel = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.boldSystemFont(ofSize: 40)
//        lb.text = "Teste"
        lb.textAlignment = .center
        lb.textColor = .white
        return lb

    }()
    
    lazy var toGoPageButton:UIButton = {
        let bt :UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedToGoPageButton), for: .touchUpInside)
        bt.setTitle("Produtos da Apple", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 20)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 40/2
        bt.backgroundColor = .darkGray
        return bt
    }()
    
    @objc func tappedToGoPageButton(){
        print("caminho1")
        delegate?.tappedToGoPageButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(brandImageView)
        addSubview(titleBrandLabel)
        addSubview(toGoPageButton)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            brandImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            brandImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            brandImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            brandImageView.heightAnchor.constraint(equalToConstant: 200),
            
            titleBrandLabel.topAnchor.constraint(equalTo: brandImageView.bottomAnchor, constant: 100),
            titleBrandLabel.leadingAnchor.constraint(equalTo: brandImageView.leadingAnchor),
            titleBrandLabel.trailingAnchor.constraint(equalTo: brandImageView.trailingAnchor),
            
            toGoPageButton.topAnchor.constraint(equalTo: titleBrandLabel.bottomAnchor, constant: 100),
            toGoPageButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            toGoPageButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

        ])
        
    }
    
    
}
