//
//  HomeService.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 12/09/23.
//

import UIKit
import Alamofire

class HomeService {
    // assincrona, não sabe quando irá obter uma resposta 
    func getHomeDataAlamofire(completion: @escaping (HomeData?, Error?) -> Void) {
        let url: String = "https://run.mocky.io/v3/dfc6e51a-3e44-4199-a4e5-909eda933e19"
        //get acesso, trazer informações
        //irá decidircar o Home data na linha de baixo
        AF.request(url,method: .get).validate().responseDecodable(of: HomeData.self) { response in
            debugPrint(response)
            
            switch response.result{
            case .success( let success):
                print("sucesso")
                completion(success, nil)
            case .failure(let error):
                print("Error")
                completion(nil, error)
            }
        }
    }
    //MARK: Usando Mock
    // completion = "é uma func de retorno" -> @escaping = func assincronas, não sabemos se a reposta é imediata.(tupla é o post e error ou seja um caso de sucesso e de erro) = Void -- > para dizer que o retorno é vazia, porém a u mcaso de sucesso e erro devido ao completion
    // usando Mock dessa forma é algo interno sem requição de uma API (algo externo)
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
