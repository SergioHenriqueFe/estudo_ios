//
//  ViewController.swift
//  UsandoProtocol
//
//  Created by Sergio henrique Ferreira on 15/08/23.
//

import UIKit

class HomeVC: UIViewController {

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

extension HomeVC : HomeScreenProtocol {
    func tappedToGoPag() {
        print("ação realizada na ViewController")
        let vc : Page2VC = Page2VC()
        present(vc, animated: true)

        vc.delegate(delegate: self)
    }
    
    
}

extension HomeVC : Page2VCProtocol {
    func back() {
        homeScreen?.backgroundColor = .blue
    }
    
    
}

