//
//  LoginViewModel.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 08/09/23.
//

import UIKit
import Firebase

protocol LoginViewModelProtocol: AnyObject {
    func succesLogin()
    func errorLogin(errorMessage: String)
    
}
class LoginViewModel: NSObject {
    
    private weak var delegate: LoginViewModelProtocol?
    
    public func delegate(delegate: LoginViewModelProtocol) {
        self.delegate = delegate
    }
    
    // Do fire base
    private var auth = Auth.auth()
    
    public func login(email: String, passsword: String){
        auth.signIn(withEmail: email, password: passsword) { authResult, error in
            if error == nil {
                print("Sucesso Login")
                self.delegate?.succesLogin()
            }else {
                print("error Login, error\(error?.localizedDescription ?? "")")
                self.delegate?.errorLogin(errorMessage: error?.localizedDescription ?? "")
            }
        }
    }
    public func registerUser(email: String, passsword: String){
        auth.createUser(withEmail: email, password: passsword) { authResult, error in
            if error == nil {
                print("Sucesso cadastro")
            }else {
                print("error cadastro, error: \(error?.localizedDescription ?? "")")
            }
        }
    }
    
}
