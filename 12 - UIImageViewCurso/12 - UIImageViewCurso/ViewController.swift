//
//  ViewController.swift
//  12 - UIImageViewCurso
//
//  Created by Sergio henrique Ferreira on 26/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //para inserie um assets externa
//        logoImageView.image = UIImage(named: "imagemTeste")
        
        // para inserir uma imagem do sistema
        logoImageView.image = UIImage(systemName: "brain.head.profile")
        logoImageView.tintColor = .purple
        logoImageView.contentMode = .scaleToFill
        
    }


}

