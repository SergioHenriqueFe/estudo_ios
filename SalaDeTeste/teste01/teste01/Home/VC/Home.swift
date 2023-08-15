//
//  ViewController.swift
//  teste01
//
//  Created by Sergio henrique Ferreira on 14/08/23.
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
        view.backgroundColor = .red
        homeScreen?.delegate(delegate: self)
    }


}
extension Home : HomeScreenProtocol{
    func tappedToGoButton() {
        let vc:Tela02VC = Tela02VC()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
