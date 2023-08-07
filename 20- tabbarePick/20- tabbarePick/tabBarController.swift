//
//  tabBarController.swift
//  20- tabbarePick
//
//  Created by Sergio henrique Ferreira on 02/08/23.
//

import UIKit

class tabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItem ()
        configTabbar()
    }
    
    func configItem (){
        guard let item = tabBar.items else {return}
        item[0].title = "Contatos"
        item[1].title = "Lista"
        item[2].title = "Lixeira"
        
        item[0].image = UIImage(systemName: "person")
        item[1].image = UIImage(systemName: "list.bullet")
        item[2].image = UIImage(systemName: "trash")
                
    }
    
    func configTabbar(){
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = UIColor.systemGray3
    }


}
