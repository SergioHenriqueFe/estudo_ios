//
//  TabBarController.swift
//  19-tabbar
//
//  Created by Sergio henrique Ferreira on 24/07/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configTabBar()
        
}
    func configItems(){
        //inserindo as mudaças de title na tabBar, pois se eu fizer alteração no arquivo da tela ele não será alterado, pois viewDidLoad, é execultado apenas quando a tela e execultado, dessa forma uma tela não executad não tera as alterações feitas
        guard let items = tabBar.items else{return}
        items[0].title = "Tela 01"
        items[1].title = "Tela 02"
        items[2].title = "Tela 03"
    }
    
    
    func configTabBar(){
        // alterando as config da tabbar
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }

}
