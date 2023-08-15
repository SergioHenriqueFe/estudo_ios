//
//  ViewController.swift
//  25- notificationCenterEProtocol
//
//  Created by Sergio henrique Ferreira on 14/08/23.
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

extension HomeVC : HomeScreeProtocol{
    func tappedToGoPageButton() {
        let vc : ProductsVC = ProductsVC()
        present(vc, animated: true)
    }
}

