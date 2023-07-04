import UIKit //Biblioteca nativa da apple - Para as configurações nos elementos de UI

//MARK: Criando a variavel : passo a passo

// 1 -  criar var
// 2 - Colocar nome da Variavel
// 3 - Tipar a variavel  (opcional)
// 4 - Valor

var nomePessoa4 = "Sérgio\n"

let namorada = "Amanda"

//print(nomePessoa1)

//print(namorada)

var numero1 = 2
var numero2 = 4

//print(numero2*numero1)

//MARK: Tipagem do tipo explicita - o tipo da variavel  :(String ["texto"], bool [Verdadeiro ou falso], Int [Numeros inteiros], Double [Números decimais], Float {Não é muito usado} [Números decimais, porém apenas 7 casa decimais após o ponto])

var nomeDaMae1 :String = "Si"

//print(nomeDaMae1)

// MARK: ------------------------------------->SEPARADOR<----------------------------------------------------------------------------------
//MARK: Tipagem do tipo inplicita

var nomeDaMae2 = "Si2"

//print(nomeDaMae2)


var familia : String = "Ferreira"
var nomePessoa1 : String = "Sérgio Henrique Ferreira"
var nomePessoa2 : String = "Amanda Máximo Alves"
var nomeCachorro : String = "Theo Máximo"
var numeroDePessoas : Int = 2
var numeroDeAnimais : Int = 1
var pesoPessoa1 : Double = 80.1
var pesoPessoa2Double : Double = 70.222222222222222222222222222334111111
var pesoPessoa2Float : Float = 70.222222222222222222222222222334111111
var ePessoa : Bool = true
var temGato : Bool = false

// MARK: ------------------------------------->SEPARADOR<----------------------------------------------------------------------------------------
// Alterar os valores das variaveis

var meuNomeE :String = "Sérgio"
//print(meuNomeE)
meuNomeE = "Henrique"
//print(meuNomeE)

// MARK: ------------------------------------->SEPARADOR<----------------------------------------------------------------------------------------

//MARK: Constante

// 1 - uso do let

let nomeCachorro2 :String = "Theo"

//nomeCachorro2 = "Pedro" --->Não pode ser alterada<----



// MARK: ------------------------------------->SEPARADOR<----------------------------------------------------------------------------------------
//MARK: Opcional
// uso  requisições de api , funções

var generoDaPessoa1 :String? = nil
var generoDaPessoas02 :String? = "Sérgio"
var generoDaPessoa3 :String?
var myAge :Int? = 25
var myAge2 :Int?
var myAge3 :Int? = nil

//print("Meu nome é \(generoDaPessoa1 ?? "Não tem um nome")")
//print("Meu nome é \(generoDaPessoas02 ?? "Henrique ")")

var eBonito :Bool?
var frase :String = "Se ele for bonita me fale: \(eBonito ?? true)"
//print(frase)

var cpf :Int?
var fraseCpf :String = "meu CPF é : \(cpf ?? 0 )"
//print(fraseCpf)

var firstNane :String = "Theo"
var middleName :String?
var surName :String?

var fullName:String = "Meu nome completo é : " + "  " + firstNane + " " + (middleName ?? "Máximo") + " " + (surName ?? "Ferreira")
//print(fullName)


// MARK: ------------------------------------->SEPARADOR<---------------------------------------------------------------------------------------


// MARK: Manipulação de variaveis



var nomeAmigo :String = "Henrique"
var myName :String = "Sérgio"

var ageAmigo :Int = 27

var precoCombustivel :Float = 3.98
var valorCombustivel :Bool = true

var valorPi :Double = 3.141233221

// Formação de uma frase com texto e número
//Concatenação como se fosse uma soma

var fraseComOsNomesConcatenacao : String = nomeAmigo + " e " + myName
//print(fraseComOsNomesConcatenacao)

// Interpolação como se fosse a união (Mais usual)
//concatenação e interpolação, ambos podem chegar no mesmo resultado

var fraseComNomesInterpolação :String = "\(nomeAmigo) e \(myName)"
//print(fraseComNomesInterpolação)

// MARK: observe que ageAmigo(INT) está sendo convertido em texto(STRING)
var fraseNomeIdade :String = "Meu nome é \(myName) e tenho \(ageAmigo) idade"
//print(fraseNomeIdade)


// MARK: transformando Double em int

var peso :Double = 92.45
var pesoInt :Int = Int(peso)
print(peso)
print("Double transformado em int")
print(pesoInt)

//" ! " force-unwrap  tenho certeza que age é uma String e irá ser convertida em int --> Não é usado

var age :String = "27"
var ageInt :Int = Int(age)!
print(ageInt)


var age1 :String = "27dsad21dd"
var ageInt2 :Int = Int(age) ?? 0
print(ageInt2)


var inicialPrimeiroName :Character = "G"
var nomek :String = "Sérgio"
var apelidok : String = "Sé"
var idadek : Int = 22
var gostaSwifit :Bool = true

print("A pessoa que mais gosta da linguagem Swifit é o \(nomek), sua inicial é \(inicialPrimeiroName), e o apelido é \(apelidok), sua idade é : \(idadek). Agora chegou a hora da verdade ele gosta mesmo de swifit? \(gostaSwifit)")


















