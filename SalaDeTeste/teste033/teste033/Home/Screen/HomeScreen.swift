//
//  HomeScreen.swift
//  teste033
//
//  Created by Sergio henrique Ferreira on 15/08/23.
//

import UIKit
protocol HomeScreenProtocol : AnyObject {
    func tappedGotoPageButton()
}
class HomeScreen: UIView {
    
    private weak var delegate : HomeScreenProtocol?
    public func delegate(delegate : HomeScreenProtocol?){
        self.delegate = delegate
    }
    
    lazy var goToPageButton : UIButton = {
        let bt :UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedGotoPageButton), for: .touchUpInside)
        bt.setTitle("Go page", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .black
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 40/2
        return bt
        
    }()
    
    @objc func tappedGotoPageButton(){
        print("passo 1")
        delegate?.tappedGotoPageButton()
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
        addSubview(goToPageButton)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            goToPageButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            goToPageButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            goToPageButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            goToPageButton.heightAnchor.constraint(equalToConstant: 40),
        
        ])
    }
    
}
