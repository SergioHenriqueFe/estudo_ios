//
//  Tela02VC.swift
//  15 - NavigationAvancadaCurso
//
//  Created by Sergio henrique Ferreira on 28/06/23.
//

import UIKit

class Tela02VC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    let name: String
    
    init?(coder: NSCoder, name : String){
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //var name : String? // uso simples
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
    }
    
}
