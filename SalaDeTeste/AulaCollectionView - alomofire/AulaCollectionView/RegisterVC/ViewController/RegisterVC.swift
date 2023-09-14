//
//  ViewController.swift
//  PrimeiroProjetoViewCodeCurso
//

//

import UIKit

class RegisterVC: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false 
        
    }
    private var registerScreen: RegisterScreen?
    private var viewModel: RegisterViewModel = RegisterViewModel()
    
    override func loadView() {
        registerScreen = RegisterScreen()
        view = registerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerScreen?.delegate(delegate: self)
        registerScreen?.configTextFieldDelegate(delegate: self)
        viewModel.delegate(delegate: self)
    }


}

extension RegisterVC: RegisterScreenProtocol {
    
    func tappedRegisterButton() {
        print("chegou na VC")
//        let vc: HomeVC = HomeVC()
        // Caso queira que a VC seja uma UINavigationController
//        let nav = UINavigationController(rootViewController: vc)
//        present(vc, animated: true)
//        navigationController?.pushViewController(vc, animated: true)
        viewModel.registerUser(email: registerScreen?.emailTextField.text ?? "" , passsword: registerScreen?.passwordTextField.text ?? "")
    }
 
}

extension RegisterVC : RegisterViewModelProtocol{
    func errorRegister(errorMessage: String) {
        print(#function)
        Alert(controller: self).showAlertInformation(title: "Error Cadastro!", message: errorMessage)
    }
    
    func succesRegister() {
        let vc : HomeVC = HomeVC()
        present(vc,animated:  true)
    }
}

extension RegisterVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        let email: String = registerScreen?.emailTextField.text ?? ""
        let passwordTextField: String = registerScreen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !passwordTextField.isEmpty {
            print("Botao habilitado")
            registerScreen?.registerButton.isEnabled = true
            registerScreen?.registerButton.backgroundColor = .darkGray
        } else {
            print("Botao desabilitado")
            registerScreen?.registerButton.isEnabled = false
            registerScreen?.registerButton.backgroundColor = .darkGray.withAlphaComponent(0.6)
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return false
    }
    
}


