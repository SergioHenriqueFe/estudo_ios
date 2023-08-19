//
//  UserModel.swift
//  SwiftArquiteturas
//
//  Created by Sergio henrique Ferreira on 17/08/23.
//

import Foundation
//Codable é um protocol usado para decoficar | codificar valores vindo de uma Json ou data
struct UserModel : Codable {
    let email : String
    let password : String
    
    init(){
        self.email = String()
        self.password =  String()
    }
    
    init(email : String, password : String){
        self.email = email
        self.password = password
    }
}
