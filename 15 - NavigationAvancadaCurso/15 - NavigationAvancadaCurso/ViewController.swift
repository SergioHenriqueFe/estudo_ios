//
//  ViewController.swift
//  15 - NavigationAvancadaCurso
//
//  Created by Sergio henrique Ferreira on 28/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappederGoScreenButton(_ sender: UIButton) {
        // MARK: forma de navegação simples
//        // as = afirmado que o tela02 é tela02
//        let viewC : Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
//        // para apresentar um modal
//
////        viewC?.modalPresentationStyle = .fullScreen
////        self.present(viewC ?? UIViewController(),animated: true)
//        
//        // para chmar uma   navigation Controller
//        viewC?.name = self.nameTextField.text
//        self.navigationController?.pushViewController(viewC ?? UIViewController(), animated: true)
        
        //MARK: forma de navegação complexa  - transitando
        
        let vc : Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(identifier: "Tela02VC") {coder in return Tela02VC (coder: coder, name: self.nameTextField.text ?? "" )}
        
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
}

