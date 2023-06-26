//
//  ViewController.swift
//  ElementosBasicosCurso
//
//  Created by Sergio henrique Ferreira on 23/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bemVindoLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bemVindoLabel.text = "Teste Uilabel"

    }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("botão pressionado!")
        view.backgroundColor = .red
    }
    
}

