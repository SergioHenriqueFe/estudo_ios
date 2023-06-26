import UIKit


var celcius : Double = 30

var fahrenheit = ((celcius * 9) / 5)+32

var nota01 : Double = 1
var nota02 : Double = 0
var nota03 : Double = 10

var media = (nota01 + nota02 + nota03) / 3

print("Sua média em Ciência da Computação foi : \(media)")

if media >= 7 {
    print("passou")
}else {
    print("Não passou")
}
