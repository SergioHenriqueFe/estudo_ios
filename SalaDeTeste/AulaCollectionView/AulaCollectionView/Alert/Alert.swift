//
//  Alert.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 10/09/23.
//

import UIKit

class Alert {
    private let controller:UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    public func showAlertInformation(title:String, message:String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(ok)
        controller.present(alertController, animated: true)
    }
}
