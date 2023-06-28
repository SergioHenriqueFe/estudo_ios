//
//  ViewController.swift
//  10 - UiSwitchCurso
//
//  Created by Sergio henrique Ferreira on 26/06/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stateSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // iniciando ele como o valor on
        stateSwitch.isOn = false
        //muda a cor ativada do switch do defalt green para red
        stateSwitch.onTintColor = .green
        stateSwitch.thumbTintColor = .orange
    }

    @IBAction func tappedSwitchAction(_ sender: UISwitch) {
        //a linha abaixo é para quando estiver on mudar a cor do fundo e quando estiver off para outro cor
        //print(sender. isOn)
        if sender.isOn{
            view.backgroundColor = UIColor .blue
            stateSwitch.thumbTintColor = .green .withAlphaComponent(0.5)
            
        } else  {
            view.backgroundColor = UIColor.purple
        }
        
    }
    
}

