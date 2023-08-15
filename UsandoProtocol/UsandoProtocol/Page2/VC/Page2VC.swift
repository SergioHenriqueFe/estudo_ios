//
//  Page2VC.swift
//  UsandoProtocol
//
//  Created by Sergio henrique Ferreira on 15/08/23.
//

import UIKit
protocol Page2VCProtocol : AnyObject {
    func back()
}

class Page2VC: UIViewController {
    
    private weak var delegate : Page2VCProtocol?
    public func delegate(delegate : Page2VCProtocol?){
        self.delegate  = delegate
    }
    
    var pageScrenn : PageScreeen?
    override func loadView() {
        pageScrenn = PageScreeen()
        view = pageScrenn
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        pageScrenn?.delegate(delegate: self)
    }
    
}

extension Page2VC : PageScreeenProtocol{
    func tappedBackToPageProtocol() {
        print("Ação ocorrida na ViewController")
        delegate?.back()
        dismiss(animated: true)
    }
    
    
}



