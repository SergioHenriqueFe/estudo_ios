import UIKit

struct Person: Codable {
    
    var name:String
    var age: Int
    var lastName:String
// CodingKeys é opcional, porém caso tenha algum nome que venha da API com um formato não usual no swift, é necessário a criação do enum
    enum CodingKeys:String, CodingKey {
        case name = "name_App"
        case age = "age_App"
        case lastName = "last_Name"
    }
}

let jsonString = """

{
    "name_App": "Sérgio",
    "age_App": 26,
    "last_Name": "Ferreira"

}

"""
// Decodificanod um Json para Swift (Json for Swift)
let jsonDecoder = JSONDecoder()

if let jsonData = jsonString.data(using: .utf8){
    do {
        let person : Person = try jsonDecoder.decode(Person.self, from: jsonData)
        print("Decodificado")
        print("nome completo: \(person.name) \(person.lastName), idade \(person.age). ")
    }catch {
        print("erro ao decodificar Json: \(error)")
    }
}

// codificando um objeto em JSon (Swift for JSON)

let person: Person = Person(name: "Amanda", age: 30, lastName:  "Máximo")

let jsonEncoder = JSONEncoder()
jsonEncoder.outputFormatting = .prettyPrinted

do {
    let jsonData = try jsonEncoder.encode(person)
    if let jsonString = String(data : jsonData,encoding: .utf8) {
        print("Json Codificado : ")
        print(jsonString)
        
    }
}catch {
        print("Erro ao codificar em Json:\(error)")
    }



