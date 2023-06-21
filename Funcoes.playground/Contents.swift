import UIKit

// MARK: Funções

// o nome da função é importante que seja especifico e legivel para entender o que faz a função
// para criação de uma função usar :  func nameEspecificoFuncao (parametros) {bloco de código executado pelo compilador}

//MARK: função sem retorno e sem parametro -- estática
func somaDoisValoresSemRetornoParametro (){
    var namber01 = 20
    var namber02 = 30
    //print("a soma do número \(namber01) + o número \(namber02) é : " , +namber01 + namber02)
}

// para chamar a função (executar)
somaDoisValoresSemRetornoParametro()

//MARK: função com parametro e sem retorno --
func somaDoisValoresParametro (valor1:Int, valor2:Int){
//    print(valor1 + valor2)
}
somaDoisValoresParametro(valor1: 2, valor2:  2)

//Função com retorno(->) e sem parametro func nomeFunc (parametro) -> tipagem{}

func somaDoisValoresRetorno () -> Int {
    return 50 + 50
    
}
print(somaDoisValoresRetorno())

//Função com retorno e parametro
func somaDoisValoresComRetornoParametro (valor4:Int, valor5:Int)->Int{
    return valor4 + valor5
    
}
print(somaDoisValoresComRetornoParametro(valor4: 20, valor5: 20))

