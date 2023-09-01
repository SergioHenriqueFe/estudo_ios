//
//  HomeService.swift
//  PrimeiroAppNetworkCurso
//
//  Created by Caio Fabrini on 16/07/23.
//

import UIKit

enum NetworkError: Error {
    case invalidURL(url: String)
    case noData
    case invalidResponse
    case decodingError(Error)
    case networkFailure(Error)
}

extension NetworkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .invalidURL(let url):
            return "URL inválida -> \(url)"
        case .noData:
            return "Dados não recebidos da API."
        case .invalidResponse:
            return "Resposta inválida da API."
        case .decodingError(let error):
            return "Decodificação falhou: \(error.localizedDescription)"
        case .networkFailure(let error):
            return "Falha na rede: \(error.localizedDescription)"
        }
    }
}


class HomeService {
    
    func getPersonList(completion: @escaping (Result<[Person],NetworkError>) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/cf70fee3-bed6-4415-b8d3-11bf1f90c74a"
        ServiceManager.shared.request(with: urlString, decodeType: PersonList.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.person))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
}
