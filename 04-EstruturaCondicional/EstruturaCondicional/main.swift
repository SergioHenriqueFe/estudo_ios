//
//  main.swift
//  EstruturaCondicional
//
//  Created by Sergio henrique Ferreira on 20/06/23.
//

import Foundation

//Situação : só deve entrar na festa maiores de idade

func validaMaiorIdade (idade :Int) -> Bool{
    if idade >= 18 {
    // resposta é verdadeira
        return  true
    } else {
    //resposta é falsa
        return false
    }
}

print(validaMaiorIdade(idade: 18))

