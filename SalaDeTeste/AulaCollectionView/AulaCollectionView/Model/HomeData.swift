//
//  HomeData.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 14/09/23.
//

import UIKit

//Decodable = Decodifica = Transforma um Json em objeto
// observando o JSON, verá que existe 1 objeto(class) que nessa objeto exite mais dois objetos (Stories e o Post), é claro, isso é se baseando no json que está nesse projeto

// Encodble = tranforma de swift(objeto) para json inverso do Decodable

// Codable = ele codifica e decodifica
struct HomeData: Codable {
    var stories :[Stories]?
    var posts:[Posts]?
}
