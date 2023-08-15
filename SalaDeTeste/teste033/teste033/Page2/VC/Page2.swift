//
//  Page2.swift
//  teste033
//
//  Created by Sergio henrique Ferreira on 15/08/23.
//

import UIKit

protocol Page2Protocol : AnyObject {
    func back()
}
class Page2: UIViewController {
    
    private weak var delegate : Page2Protocol?
    public func delegate(delegate : Page2Protocol){
        self.delegate = delegate
    }
    
    var pageScreen : PageScreen?
    override func loadView() {
        pageScreen = PageScreen()
        view = pageScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        pageScreen?.delegate(delegate: self)
        
    }
    

}

extension Page2 : PageScreenProtocol {
    func tappedBackToPageButton() {
        print("acesso2,bt2")
        delegate?.back()
        dismiss(animated: true)
    }
    
    
}
