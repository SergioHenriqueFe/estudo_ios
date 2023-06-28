//
//  ViewController.swift
//  13 - UIStepper
//
//  Created by Sergio henrique Ferreira on 26/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var valueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.minimumValue = 0
        stepper.value = 0
        stepper.maximumValue = 100
        // irá pular de 10 em 10
        stepper.stepValue = 10
        
    }

    @IBAction func tappedStepper(_ sender: UIStepper) {
        print(sender.value)
        // estou convertendo em String e depois em Int, pos o value irá vir como Double
        valueLabel.text = String(Int( sender.value))
    }
    
}

