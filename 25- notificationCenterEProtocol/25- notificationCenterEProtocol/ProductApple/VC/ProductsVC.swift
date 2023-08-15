//
//  ProductsVC.swift
//  25- notificationCenterEProtocol
//
//  Created by Sergio henrique Ferreira on 14/08/23.
//

import UIKit

class ProductsVC: UIViewController {
    var homeScreen2 : HomeScreen?
    var productsScreen : ProductsScreen?
    override func loadView() {
        productsScreen = ProductsScreen()
        homeScreen2 = HomeScreen()
        view = productsScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        productsScreen?.delegate(delegate: self)
    }
  


}

extension ProductsVC : ProductsScreenProtocol{
    func tappedMackBookButton() {
        let vc : HomeVC = HomeVC()
        navigationController?.pushViewController(vc, animated: true)
     
        
    }
    
    func tappedIPhoneButton() {
        print("iphone2")
    }
    
    
}
