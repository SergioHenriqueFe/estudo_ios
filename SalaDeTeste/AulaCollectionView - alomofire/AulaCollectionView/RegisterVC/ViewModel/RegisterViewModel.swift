//
//  LoginViewModel.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 08/09/23.
//

import UIKit
import Firebase

protocol RegisterViewModelProtocol: AnyObject {
    func succesRegister()
    func errorRegister(errorMessage: String)
    
}
class RegisterViewModel: NSObject {
    
    private weak var delegate: RegisterViewModelProtocol?
    
    public func delegate(delegate: RegisterViewModelProtocol) {
        self.delegate = delegate
    }
    
    // Do fire base
    private var auth = Auth.auth()
    

    public func registerUser(email: String, passsword: String){
        auth.createUser(withEmail: email, password: passsword) { authResult, error in
            if error == nil {
                print("Sucesso cadastro")
                self.delegate?.succesRegister()
            }else {
                print("error cadastro, error: \(error?.localizedDescription ?? "")")
                self.delegate?.errorRegister(errorMessage: error?.localizedDescription ?? "")
            }
        }
    }
    
}
