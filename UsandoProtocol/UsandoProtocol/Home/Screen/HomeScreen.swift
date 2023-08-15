//
//  HomeScreen.swift
//  UsandoProtocol
//
//  Created by Sergio henrique Ferreira on 15/08/23.
//

import UIKit
protocol HomeScreenProtocol : AnyObject {
    func tappedToGoPag()
}
class HomeScreen: UIView {
    
    private weak var delegate : HomeScreenProtocol?
    public func delegate(delegate : HomeScreenProtocol) {
        
        self.delegate = delegate
    }
    
    lazy var toGoPage : UIButton = {
        let bt:UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedToGoPage), for: .touchUpInside)
        bt.setTitle("To Go Page", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 40/2
        bt.layer.borderWidth = 2
        bt.layer.borderColor = UIColor.purple.cgColor
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        return bt
    }()
    
    @objc func tappedToGoPage(_ sende:UIButton){
        print("ação feita no HomeScreen")
        delegate?.tappedToGoPag()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
       addSubview(toGoPage)
    }
    private func configContraints(){
        NSLayoutConstraint.activate([
            toGoPage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            toGoPage.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  20),
            toGoPage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            toGoPage.heightAnchor.constraint(equalToConstant: 40)
            
        
        ])
    }
    
}
