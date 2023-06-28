//
//  ViewController.swift
//  09- ProgressViewCurso
//
//  Created by Sergio henrique Ferreira on 26/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // customização do progress
        
//        progressView.progress = 0.7
        // mudando a cor defaut (azul) para verder
        progressView.tintColor = .green
        // mudando a cor da parte que não está preenchida de verde
        progressView.trackTintColor = .lightGray.withAlphaComponent(0.6)
        // o progress terá 100 repartições, diferente de antes que tem 10
        let total = Progress(totalUnitCount : 100)
        // aqui eu falo que 25% estára completo
        total.completedUnitCount = 25
        progressView.setProgress(Float(total.fractionCompleted), animated: true)
        
    }


}

