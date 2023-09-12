//
//  ViewController.swift
//  PrimeiroProjetoViewCodeCurso
//

//

import UIKit

class LoginVC: UIViewController {
    
    private var loginScreen: LoginScreen?
    private var viewModel: LoginViewModel = LoginViewModel()
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }
  // para tirar a navigation transparente que existe quando é criado uma navigationController
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
        viewModel.delegate(delegate: self)
    }


}

extension LoginVC: LoginScreenProtocol {
    func tappedRegisterButton() {
        print(#function)
        let vc : RegisterVC = RegisterVC()
        navigationController?.pushViewController(vc, animated: true)
        
//        fatalError()
    }
    
    
    func tappedLoginButton() {
        print("chegou na VC")
//        let vc: HomeVC = HomeVC()
        // Caso queira que a VC seja uma UINavigationController
//        let nav = UINavigationController(rootViewController: vc)
//        present(vc, animated: true)
//        navigationController?.pushViewController(vc, animated: true)
        viewModel.login(email: loginScreen?.emailTextField.text ?? "" , passsword: loginScreen?.passwordTextField.text ?? "")
    }
 
}

extension LoginVC : LoginViewModelProtocol{
    func errorLogin(errorMessage: String) {
        print(#function)
        Alert(controller: self).showAlertInformation(title: "Error Login!", message: errorMessage)
    }
    
    func succesLogin() {
        let vc : HomeVC = HomeVC()
        present(vc,animated:  true)
    }
}

extension LoginVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        let email: String = loginScreen?.emailTextField.text ?? ""
        let passwordTextField: String = loginScreen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !passwordTextField.isEmpty {
            print("Botao habilitado")
            loginScreen?.loginButton.isEnabled = true
            loginScreen?.loginButton.backgroundColor = .darkGray
        } else {
            print("Botao desabilitado")
            loginScreen?.loginButton.isEnabled = false
            loginScreen?.loginButton.backgroundColor = .darkGray.withAlphaComponent(0.6)
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return false
    }
    
}


