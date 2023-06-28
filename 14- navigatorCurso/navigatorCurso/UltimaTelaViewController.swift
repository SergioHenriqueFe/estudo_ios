//
//  UltimaTelaViewController.swift
//  navigatorCurso
//
//  Created by Sergio henrique Ferreira on 27/06/23.
//

import UIKit

class UltimaTelaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedeGoFirstScreen(_ sender: UIBarButtonItem) {
//        //usado para voltar para tela anterior
//        self.navigationController?.popViewController(animated: true)
        // voltar para tela raiz
        self.navigationController?.popToRootViewController(animated: true)
    }
    
  

}
