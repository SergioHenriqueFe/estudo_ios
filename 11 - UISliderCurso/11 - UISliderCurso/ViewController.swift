//
//  ViewController.swift
//  11 - UISliderCurso
//
//  Created by Sergio henrique Ferreira on 26/06/23.
//

import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 0
        slider.maximumValue = 20
        slider.value = 0
        
    
    }

    @IBAction func tappedSlider(_ sender: UISlider) {
        print(Int(sender.value))

    }
    
}

