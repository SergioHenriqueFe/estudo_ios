//
//  SelectionScreen.swift
//  26-notificationCenterEProtocol
//
//  Created by Sergio henrique Ferreira on 14/08/23.
//

import UIKit
protocol SelectionScreenProtocol : AnyObject {
    func tappedMacbookButton()
    func tappedIphoneButton()
    
}
class SelectionScreen: UIView {
    
    private weak var delegate : SelectionScreenProtocol?
    public func delegate (delegate:SelectionScreenProtocol){
        self.delegate = delegate
    }
    lazy var titleLabel : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        lb.textColor = .white
        lb.text = "Opções"
        lb.textAlignment = .center
        
        return lb
        
    }()
    
    lazy var macbookButton : UIButton = {
        let bt = UIButton(type: .system)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedMacbookButton), for: .touchUpInside)
        bt.setTitle("MacBook", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .darkGray
        return bt
    }()
    lazy var iphoneButton : UIButton = {
        let bt = UIButton(type: .system)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedIphoneButton), for: .touchUpInside)
        bt.setTitle("Iphone", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .darkGray
        return bt
    }()
    
    @objc func tappedMacbookButton(_ sender: UIButton){
        delegate?.tappedMacbookButton()
    }
    
    @objc func tappedIphoneButton(_ sender: UIButton){
        delegate?.tappedIphoneButton()
    }
        
    
        
    override init(frame: CGRect) {
        super.init(frame:frame)
        backgroundColor = .black
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(titleLabel)
        addSubview(macbookButton)
        addSubview(iphoneButton)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor ),
            
            macbookButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60),
            macbookButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            macbookButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            macbookButton.heightAnchor.constraint(equalToConstant: 40),
            
            iphoneButton.topAnchor.constraint(equalTo: macbookButton.bottomAnchor, constant: 40),
            iphoneButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            iphoneButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            iphoneButton.heightAnchor.constraint(equalToConstant: 40),

            
        
        ])
    }
    
}
