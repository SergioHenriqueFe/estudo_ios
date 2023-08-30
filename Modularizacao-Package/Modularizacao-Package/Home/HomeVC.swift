//
//  ViewController.swift
//  modularizacao-Package
//
//  Created by Sergio henrique Ferreira on 28/08/23.
//

import UIKit
import SDKDMS

class HomeVC: UIViewController {
    
    private var screen : HomeScreen?
    var SKD : DSM?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

