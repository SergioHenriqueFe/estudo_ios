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
        //viewDidLoad é execultado uma unica vez
        super.viewDidLoad()
        // # print o nome da função
        print(#function)
    }
    
    // viewWillAppear toda as vezes que a tela é apresentada ele é chadmado (é um pouco antes de apresentar)
    // usado para fazer algumas  configurações animações
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    // viewDidAppear quando a tela 100% apresentada ele é disparado
    //GeoLocalização
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    //viewWillDisappear é a sainda da tela
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
        
    }
    //para uma anição/ geoLocalização
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
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

