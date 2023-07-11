//
//  ViewController.swift
//  testeNavigation
//
//  Created by Sergio henrique Ferreira on 10/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        let vc :Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
//        self.present(vc ?? UIViewController(), animated: true) Apresentar o modal
        self.navigationController?.pushViewController( vc ?? UIViewController(), animated: true)
    }
    
}

