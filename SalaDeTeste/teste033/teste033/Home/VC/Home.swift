//
//  ViewController.swift
//  teste033
//
//  Created by Sergio henrique Ferreira on 15/08/23.
//

import UIKit

class Home: UIViewController {
    var homeScreen : HomeScreen?
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.delegate(delegate: self)
}


}

extension Home : HomeScreenProtocol{
    func tappedGotoPageButton() {
        print("acessando outra pagina")
        let vc : Page2 = Page2()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

