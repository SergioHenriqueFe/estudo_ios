//
//  ViewController.swift
//  22ViewCode-PrieiroElemento
//
//  Created by Sergio henrique Ferreira on 03/08/23.
//

import UIKit

class LoginVC: UIViewController {
    
    //uma camada separada para visualização
    
    var loginScreen: LoginScreen?
    // loadView ele que gera a intancia para loginScrenn com finalidade view controler sera de fato ela
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
         
    }
    
    
//MARK: 3 passo para ação do button - chamar loginScreen
 override func viewDidLoad() {
        super.viewDidLoad()
     loginScreen?.delegate(delegate: self)
     loginScreen?.configTextFiledDelegate(delegate: self)
    }


}
//MARK: 4 passo para ação do button - criar a extension para o protocolo
extension LoginVC: LoginScreenProtocol{
    func tappedLoginButton() {
        let vc: HomeVC = HomeVC()
        vc.present(vc, animated: true)
    }
}
//MARK: Criação do delegate para textFiled
//vantagens do delegate, setas as caracteristicas
extension LoginVC:UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function) // 1 a ser despaarado ao abrir o teclado
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function) // chamdo ao finalizar , teclado abaixou
    // é colocado a  lógica para validação de textfield aqui pois no souldR, pode ser que o usuario não clique no button para abaixar o teclado, dessa forma, irá invalidar todo o código
        let email:String = loginScreen?.emailTextFiled.text ?? ""
        let password:String = loginScreen?.passwordTextField.text ?? ""
    //pode ser assim
//        if email != ""  && password != "" {
//            print("habilitado")
//        }else{
//            print("Desa")
//        }
        
    // ou pode ser assim
        if !email.isEmpty && !password.isEmpty {
            print("habilitado")
            loginScreen?.loginButton.isEnabled = true
            loginScreen?.loginButton.backgroundColor = .red
            
            
        }else{
            print("Desabilitado")
            loginScreen?.loginButton.isEnabled = false
            loginScreen?.loginButton.backgroundColor = .darkGray.withAlphaComponent(0.8)
        }
        
    // ou pode ser assim
//        if email.isEmpty || password.isEmpty {
//            
//        }
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)// essa linha serve para printar o nome da propria func
        textField.resignFirstResponder()
        return false // ao clicar ao pressionar retorno
    }
}

