//
//  HomeService.swift
//  AppNetword
//
//  Created by Sergio henrique Ferreira on 30/08/23.
//

import UIKit

class HomeService: NSObject {
//realizar a requisição (simples)
    func getPersonList(){
        let urlString : String = "https://run.mocky.io/v3/ac06a55f-fa21-4bcd-ba63-6a316cb8e0d8"
        
        guard let url: URL = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){(data, response,error) in
            if let error{
                print("ERROR \(#function) Detalhe do erro: \(error.localizedDescription)")
                return
            }
            // informação do que o back end retorna(forma binario), dessa forma é necessário realizar um decodificação
            guard let data else {
                
                return
            }
            //
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                return
            }
            
//            do {
//                let person: Person try <#throwing expression#>
//            } catch <#pattern#> {
//                    
//            }
        }
        task.resume()
    }
    
}
