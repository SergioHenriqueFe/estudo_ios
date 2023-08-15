//
//  PageScreen.swift
//  teste033
//
//  Created by Sergio henrique Ferreira on 15/08/23.
//

import UIKit
protocol PageScreenProtocol: AnyObject {
    func tappedBackToPageButton()
}
class PageScreen: UIView {
    private weak var delegate : PageScreenProtocol?
    public func delegate(delegate : PageScreenProtocol) {
        self.delegate = delegate
    }
    lazy var backtoPageButton : UIButton = {
        let bt :UIButton = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.addTarget(self, action: #selector(tappedBackToPageButton), for: .touchUpInside)
        bt.setTitle("back To Page", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .black
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 40/2
        return bt
        
    }()
    
    @objc func tappedBackToPageButton(_ sender : UIButton){
       print("caminho1, bt2")
        delegate?.tappedBackToPageButton()
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
        addSubview(backtoPageButton)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            backtoPageButton.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor, constant: 100),
            backtoPageButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            backtoPageButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            backtoPageButton.heightAnchor.constraint(equalToConstant: 40)
        
        ])
    }
    
}
