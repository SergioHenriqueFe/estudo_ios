//
//  PageScreeen.swift
//  UsandoProtocol
//
//  Created by Sergio henrique Ferreira on 15/08/23.
//

import UIKit
protocol PageScreeenProtocol : AnyObject{
    func tappedBackToPageProtocol()
}
class PageScreeen: UIView {
    
    private weak var delegate: PageScreeenProtocol?
    public func delegate(delegate: PageScreeenProtocol){
        self.delegate = delegate
    }
    
    lazy var backtoPage : UIButton = {
        let bt:UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedBackToPage), for: .touchUpInside)
        bt.setTitle("Back", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 40/2
        bt.layer.borderWidth = 2
        bt.layer.borderColor = UIColor.purple.cgColor
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        return bt
    }()
    
    @objc func tappedBackToPage(_ sende:UIButton){
        print("ação feita no PageScreen")
        delegate?.tappedBackToPageProtocol()
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
        addSubview(backtoPage)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            backtoPage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            backtoPage.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  20),
            backtoPage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            backtoPage.heightAnchor.constraint(equalToConstant: 40)
        
        
        
        
        ])
    }
    
    
}
