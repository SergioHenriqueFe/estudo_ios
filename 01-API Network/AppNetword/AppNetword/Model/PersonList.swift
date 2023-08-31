//
//  PersonList.swift
//  AppNetword
//
//  Created by Sergio henrique Ferreira on 31/08/23.
//

import Foundation

struct PersonList: Codable {
    // tem que ser identico ao nome que está na API
    var person : [Person]
}

struct Person:Codable {
    var name: String
    var lastName:String
    var phone:String
    

    enum CodingKeys: String,CodingKey {
        case name = "nome"
        case lastName = "sobrenome"
        case phone = "telefone"
    }
}
