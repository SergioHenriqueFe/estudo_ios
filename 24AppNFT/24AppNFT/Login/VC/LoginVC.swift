//
//  ViewController.swift
//  24AppNFT
//
//  Created by Sergio henrique Ferreira on 12/08/23.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen :LoginScreen?
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
    func tappedRecoverPasswordButton() {
        let vc: RecoverPasswordVC = RecoverPasswordVC()
        present(vc, animated: true)
            }
    
    func tappedLogin() {
        let vc:HomeVC = HomeVC()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}

