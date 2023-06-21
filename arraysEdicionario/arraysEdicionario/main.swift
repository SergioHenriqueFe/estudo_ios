//
//  main.swift
//  arraysEdicionario
//
//  Created by Sergio henrique Ferreira on 21/06/23.
//

import Foundation

// MARK: Array

// Array é uma lista de varios tipos . É uma variavel que armazena varios valores
// os [] marca que é um array
// var nomeArray :[tipagem] = [posiçãoElemento0, posiçãoElemento1, posiçãoElemento2  ... posiçãoElementox]
// Principais caracteristicas do array :
    // 1- trabalha com index (posição de elemento)
    // 2- Ordenado a posição não é alterada
    // não há limite de elementos

var diasDaSemana : [String] = ["Sergunda", "Terça", "Quarta", "Quinta", "Sexta"]
var contatos : [Int] = [996302766, 998316380,997054586]
//print(diasDaSemana[0])

// .count , irá contar o número de elementos
//print(diasDaSemana.count)
//print(contatos.count)

//.isEmpty verifica se a lista é vazia ou não
//print(diasDaSemana.isEmpty)

//for - serve para percorrer a lista
for value in diasDaSemana{
//    print("para : \(value)")
}

// atraves do enumerated() é possivel remover um item da lista

for (index, value) in diasDaSemana.enumerated(){
    if value == "Sexta"{
//        print("Finalmente hoje é sexta-feira")
        diasDaSemana.remove(at: index)
//        print("Sexta removida da lista")
    }
}
//print(diasDaSemana)


//.append - add item na lista

diasDaSemana.append("Sabado")
//print(diasDaSemana)

//MARK: Dicionário

// array é index  diferente do dicionario que é chave/key e valor/value
//Caracteristicas do dicionario :
// é feito dentro de couchetes, com as propriedades sepadas por virgulas, ex:\
// [chave/key : valor/value]
// [1: "Nota baixa"]
//cada valor tem a sua propria chave
// permite valores repetidos, mas não permite chaves repetidas
// o dicionario não é ordenado, por ter a chave como buscador

// estou falando que a chave é do tipo Int e o valor é do tipo String
var nota :[Int : String] = [2:"Nota baixa", 3: "nota média", 4 : "nota alta",1: "nota muito baixa"]

// como acessar o valor de uma chave especifica
print(nota[44] ?? " Sem valor no dicionário")

//updateValue() para adicionar um novalor em uma chave já existente  ou caso a chave não exista irá add um novo valor
print("antes do upDateValue\(nota)")

nota.updateValue("Nota teste", forKey: 1)
print("para substituir um valor já em uma chave já criada : \(nota)")

nota.updateValue("Novo Valor Add", forKey: 10)
print("para o novo valor e chave add: \(nota)")

//.removeValue para remover

nota.removeValue(forKey: 10)
print(nota)


for valueNota in nota{
    if valueNota.value == "Nota teste"{
        nota.removeValue(forKey: valueNota.key)
    }
}
print(nota)
