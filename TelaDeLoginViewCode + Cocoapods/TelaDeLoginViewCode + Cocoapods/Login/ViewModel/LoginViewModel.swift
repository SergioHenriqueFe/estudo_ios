//
//  LoginViewModel.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 08/09/23.
//

import UIKit
import Firebase
class LoginViewModel: NSObject {
    // Do fire base
    private var auth = Auth.auth()
    
    public func login(email: String, passsword: String){
        auth.signIn(withEmail: email, password: passsword) { authResult, error in
            if error == nil {
                print("Sucesso Login")
            }else {
                print("error Login, error\(error?.localizedDescription ?? "")")
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
