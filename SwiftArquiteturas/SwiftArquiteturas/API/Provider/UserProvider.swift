//
//  UserProvider.swift
//  SwiftArquiteturas
//
//  Created by Sergio henrique Ferreira on 17/08/23.
//

import Foundation

import Firebase


protocol UserProviderProtocol {
    //1 criar duas assinaturas
    
    func register(parameters: [ AnyHashable : Any], completionHandler: @escaping(Result<UserModel,Error>)-> Void)
    func login(parameters: [ AnyHashable : Any],completionHandler: @escaping(Result<UserModel,Error>) -> Void)
    
}

class UserProvider : UserProviderProtocol {
    func register(parameters: [AnyHashable : Any], completionHandler: @escaping (Result<UserModel, Error>) -> Void) {
        
    }
    
    func login(parameters: [AnyHashable : Any], completionHandler: @escaping (Result<UserModel, Error>) -> Void) {
        
    }
    
    
    
    
}
