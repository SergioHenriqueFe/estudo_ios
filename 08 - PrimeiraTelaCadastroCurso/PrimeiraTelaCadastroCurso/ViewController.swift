//
//  ViewController.swift
//  PrimeiraTelaCadastroCurso
//
//  Created by Sergio henrique Ferreira on 23/06/23.
//

import UIKit

class ViewController: UIViewController  {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.keyboardType = .default
        emailTextField.keyboardType = .emailAddress
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
       
        // é para delegar caracteristicas para outros textfields para isso é necessário fazer em baixo extension viewController : UITextfieldDelegate
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        // usado para bloquear ação do usuario do botão
        registerButton.isEnabled = false
        // para o botão não habilitado
        registerButton.setTitleColor(.white.withAlphaComponent(0.4), for: .disabled)
        // para  o botão habilitado
        registerButton.setTitleColor(.white, for: .normal)
    }

    
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        
    }
    func validateTExtField(){
        // validando para ver se os campos não estão vazios
        if nameTextField.text != "" && emailTextField.text != "" && passwordTextField.text != "" {
            registerButton.isEnabled = true
        } else {
            registerButton.isEnabled = false
        }
    }
    
    
}

extension ViewController : UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //ao inicializar o textfield
        //para colocar um borda em volta do textfield
        textField.layer.borderColor = UIColor.purple.cgColor
        textField.layer.borderWidth = 1
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //é para quando o teclado desaparece
        //quando o teclado abaixar voltar para borda =
        textField.layer.borderWidth = 0
        validateTExtField()
        
}
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //ao clicar no return irá fazer algo
        //para resignfirstResponder() é para abaixar o teclado do celular
        textField.resignFirstResponder()
        return true
    }
}

