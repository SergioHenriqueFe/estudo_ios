//
//  ViewController.swift
//  23-navegacao
//
//  Created by Sergio henrique Ferreira on 11/08/23.
//

import UIKit

class LoginVC: UIViewController {
    var loginScreen:LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
    }


}
extension LoginVC : LoginScreenProtocol{
    func tappedToGoScreen() {
        print("acesso 2")
        let vc: HomeVC = HomeVC()
//        present(vc, animated: true) navigation controlller/modal
//        let nav = UINavigationController(rootViewController: vc)
//        present(nav, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
