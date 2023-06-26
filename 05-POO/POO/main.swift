//
//  main.swift
//  POO
//
//  Created by Sergio henrique Ferreira on 21/06/23.
//

import Foundation

//MARK: Class

//Class tem que tem atributos / propriedades = caracteristicas
// Ações  = metodos / Funções
class Casa {
    
    //caracteristicas
    var quantidadeDeQuartos : Int = 10
    var temBanheiro : Bool = true
    var quantidadeDePortas : Int = 25
    var estaNoCondominio :Bool = true
    var corDaCasa : String = "Branco"
    
    //Ações  = metodos
    
    func reformar(){
        print("A casa está em reforma")
    }
    
    func abrirJanela (){
        print("Minha casa está com a janela aberta")

    }
    
    func acenderLampada(){
        print("Minha casa está com as lampadas acessas")

    }
    
}

// para criar um objeto

//Casa[tipagem = referencia em objeto] = Casa (instancia -- para o compilador fazer a leitura de tudo que tem dentro da class, ou seja, acessar os valores)

var minhaCasa : Casa = Casa()
print(minhaCasa.quantidadeDePortas)
minhaCasa.acenderLampada()

// para opcional
var minhaCasa2 :Casa? = Casa()
print(minhaCasa2?.quantidadeDePortas ?? "teste")


class Pessoa {
    var nome :String
    var idade :Int
    var peso :Double
    var altura :Double?
    
// para que não precise inserir valores nas variaveis usa-se init, ou seja, um construtor, assim terá um class de maneira genérica
//contrutor (como se fosse uma função)
    
    init (nome:String, idade:Int, peso:Double){
        self.nome = nome
        self.idade = idade
        self.peso = peso
        
    }
}

var sergio :Pessoa = Pessoa(nome: "Sérgio", idade: 26, peso: 95.2)
print(sergio.idade)

//MARK: Encapsulamento

class Cachorro {
    var nomeCachorro :String
    var idadeCachorro :Int
    var pesoCachorro :Double
    private var eDeRaca :Bool = true // prefixo antes da variavel deixa ela privada para não ter acesso
    
    init (nomeCahorro: String, idadeCachorro: Int, pesoCahorro: Double){
        self.idadeCachorro = idadeCachorro
        self.nomeCachorro = nomeCahorro
        self.pesoCachorro = pesoCahorro
        //self.eDeRaca = eDeRaca
    }
// para acessar algo privado é necessário criar public func get
    public func geteDeRaca() ->Bool {
        return eDeRaca
    }
// para alterar o valor public func set
    public func seteDeRaca(value:Bool){
        self.eDeRaca = value
    }
}

var theChorro : Cachorro = Cachorro(nomeCahorro: "The", idadeCachorro: 3, pesoCahorro: 1)

print("O \(theChorro.nomeCachorro) é um chorro de raça: \(theChorro.geteDeRaca())")

//usando o Set eu consigo alterar o valr de algo que é privad
theChorro.seteDeRaca(value: false)
print("O \(theChorro.nomeCachorro) é um chorro de raça: \(theChorro.geteDeRaca())")
print("-------- ESPAÇO -------- ")

//MARK: Herança


class Animal {
    
    func comendo(){
        print("O animal está comendo")
    }
    func correndo(){
        print("O animal está correndo")
    }
    func dormindo (){
        print("o animal está dormindo")
    }
}


// para fazer qu euma class herde de outra class as caracteristica e/ou métodos é preciso colocar : class nomeClass: nomeClassHerdaPai -- dessa forma, a class nomeClass herdará caracteristicas e métodos da class nomeClassHerdaPai

class Cavalo : Animal {
    var nome:String = "Pé de pano"
    var peso:Double = 1000
}

class Vaca : Animal {
    
    var raca :String = "mimoza"
    var ePintada :Bool = false
    
// caso eu tenhoa um método na classe pai que já foi herdada, mas por algum motivo eu queira sobreescrever esse método para algo especifico da class, fazemos uso de override
    override func comendo() {
        print("Vaca está comendo")
    }
}

// chamando as class cavalo e vaca

var theoCavalo : Cavalo = Cavalo()
theoCavalo.comendo()

var theoVaca : Vaca = Vaca()
theoVaca.comendo()

// repara que os dois tem o método comendo() que foi herdado da class animal, porém, theoVaca tem o mesmo método mas de forma diferente, por algum motivo. então é necessário sobreescrever o método existente usando OVERRRIDE

print("-------- ESPAÇO -------- ")


//MARK: Referência

// referência de algo compartilhado, exemplo um arquivo word compartilhado quando um é alterado todos são alterados

class Mac {
    var modelo :String
    var anoDeFabricacao :Int
    
    init (modelo:String, anoDeFabricacao:Int){
        self.anoDeFabricacao = anoDeFabricacao
        self.modelo = modelo
    }
}

//criação do objeto

var myMac : Mac = Mac(modelo: "MacBook Air", anoDeFabricacao: 2020)
var sisterMac : Mac = Mac(modelo: "MacBook Pro", anoDeFabricacao: 2016)

//alterei o valor de myMac para 2010
myMac.anoDeFabricacao = 2010
print(myMac.anoDeFabricacao)
// agora dei ao myMac a referencia de que ele tem o mesmo valor de sisterMac, dessa forma, passou a valer 2016
myMac = sisterMac
print(myMac.anoDeFabricacao)

// veja que o que foi alterado foi o sisterMac para 2022, porém como logo a cima o myMac = sisterMac, quando eu pedir para imprimir  o myMac passará a ter o novo valor dado ao sisterMac devido a referencia type
sisterMac.anoDeFabricacao = 2022
print(myMac.anoDeFabricacao)

print("-------- ESPAÇO -------- ")
 
//MARK: Struct

//class é reference type, herança,métodos, propriedades,
// Struct contem propriedades, métodos, inicializador opcional,value type
//não aceita herança, mas herdade   ? protocolo ?
//

struct Sobrado {
    var qunatidadePorta : Int
    var quantidadeBanheiro : Int
    var emConstrucao : Bool
}

var casaSergio :Sobrado = Sobrado(qunatidadePorta: 3, quantidadeBanheiro: 2, emConstrucao: true)

print(casaSergio.qunatidadePorta)

var casaAmigo :Sobrado = Sobrado(qunatidadePorta: 4, quantidadeBanheiro: 11, emConstrucao: false)

print(casaAmigo.qunatidadePorta)

casaAmigo = casaSergio
print(casaAmigo.qunatidadePorta)

print("-------- ESPAÇO -------- ")

// isso ocorrre por que struct é value type, ou seja, ele se basea no valor, diferente da class que é por referencia.
casaAmigo.qunatidadePorta = 20

print(casaAmigo.qunatidadePorta)
print(casaSergio.qunatidadePorta)

