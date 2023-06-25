//
//  ViewController.swift
//  PrimeiraTelaCadastroCurso
//
//  Created by Sergio henrique Ferreira on 23/06/23.
//

import UIKit

class ViewController: UIViewController {

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
    }

    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        
    }
    
}

