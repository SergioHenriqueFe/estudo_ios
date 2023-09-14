//
//  HomeService.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 12/09/23.
//

import UIKit

class HomeService {
    // completion = "é uma func de retorno" -> @escaping = func assincronas, não sabemos se a reposta é imediata.(tupla é o post e error ou seja um caso de sucesso e de erro) = Void -- > para dizer que o retorno é vazia, porém a u mcaso de sucesso e erro devido ao completion
    //
    func getHomeDataJson(completion: @escaping (HomeData?, Error?) -> Void) {
      //acessar o Json, criando um destino
        // buscando o lugar
        if let url = Bundle.main.url(forResource: "HomeData", withExtension: "json"){
            //transformando  o json em um binario
            do {
                let data = try Data(contentsOf: url)
                //try tentar algo
                //JsonDecorder = Decodificar algo, tranformar o binário em um objeto para swift
                let homeData : HomeData = try JSONDecoder().decode(HomeData.self, from: data)
                completion(homeData, nil)
            } catch  {
                completion(nil, error)
            }
        }
    }
    
}
