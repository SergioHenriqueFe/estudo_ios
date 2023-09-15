//
//  HomeService.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 12/09/23.
//

import UIKit
import Alamofire
//criação de um enum para o nativo (urlSession)

enum ErrorDetail: Swift.Error{
    case errorURL(urlString : String)
    case detailError(datail : String)
}

class HomeService {
    //MARK: Método nativo
    func getHomeDatUrlSession(completion:@escaping (HomeData?,Error?)->Void){
        let urlString: String = "https://run.mocky.io/v3/dfc6e51a-3e44-4199-a4e5-909eda933e19"
        //uso do url ela retorna como opc então é usado o guard
        
        guard let url : URL = URL(string: urlString)else{ return completion(nil, ErrorDetail.errorURL(urlString: urlString))}
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        
        //quase sempre é a mesma coisa, alterando a class (receita de bolo)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let dataResult = data else {return completion(nil, ErrorDetail.detailError(datail: "Error Data"))}
            let json = try? JSONSerialization.jsonObject(with: dataResult,options: [])
            print(json as Any)
            
            guard  let response = response as? HTTPURLResponse else {return}
            if response.statusCode == 200{
                do {
                    let homeData : HomeData = try JSONDecoder().decode(HomeData.self,from: dataResult)
                 completion(homeData,nil)
                } catch  {
                    completion(nil,error)
                }
                
            } else {
                completion (nil, error)
                
            }
        }
        
        // para suspender
        task.resume()
    }
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
