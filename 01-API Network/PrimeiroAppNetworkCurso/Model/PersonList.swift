//
//  PersonList.swift
//  PrimeiroAppNetworkCurso
//
//  Created by Caio Fabrini on 16/07/23.
//

import Foundation

struct PersonList: Codable {
    var person: [Person]
}

struct Person: Codable {
    var name: String
    var lastName: String
    var phone: String
    
    enum CodingKeys: String, CodingKey {
        case name = "nome"
        case lastName = "sobrenome"
        case phone = "telefone"
    }
    
}
