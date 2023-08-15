//
//  HomeScreen.swift
//  teste01
//
//  Created by Sergio henrique Ferreira on 14/08/23.
//

import UIKit
protocol HomeScreenProtocol:AnyObject {
    func tappedToGoButton()
}

class HomeScreen: UIView {
    
    private weak var delegate:HomeScreenProtocol?
    public func delegate(delegate: HomeScreenProtocol){
        self.delegate = delegate
    }
    lazy var toGOButton:UIButton = {
        let bt : UIButton = UIButton()
        bt.addTarget(self, action: #selector(tappedToGoButton), for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Clique", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .black
        return bt
    }()
    @objc func tappedToGoButton(_ sender :UIButton){
      print("funcionando")
        delegate?.tappedToGoButton()
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
        addSubview(toGOButton)
    }
    
    private func configConstraints(){
        
        NSLayoutConstraint.activate([
            toGOButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100)
            
            
        
        ])
        
    }
    
}
