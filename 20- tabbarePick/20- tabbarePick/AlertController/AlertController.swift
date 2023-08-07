//
//  AlertController.swift
//  20- tabbarePick
//
//  Created by Sergio henrique Ferreira on 03/08/23.
//

import UIKit
//enum referencia
enum typeImageSelected{
    case camera
    case library
    case cancel
}
class AlertController: NSObject {
    let controller: UIViewController
    init(controller : UIViewController){
        self.controller = controller
        
    }
    //completion execultar a função para obter um retorno assicrona = não tem uma estimativ de tempo de resposta quem se tem uam respota
    //@escaping = manter a referencia na memoria para não desalocar, algum momento uma  açào ira acontecer
    //Void = nao terá um retorno/"nada", deixando explicito
    
    func chooseImage(completion: @escaping (_ option: typeImageSelected )->Void){
        //alerte
        let alertController : UIAlertController = UIAlertController(title: "Selecione uma das opções", message: nil, preferredStyle: .actionSheet)
        let camera = UIAlertAction(title: "Camera", style: .default) {
            (acition) in
            completion(.camera)
        }
        
        let library = UIAlertAction(title: "Bibliotec", style: .default){action in
            //Acão biblioteca
            completion(.library)
            
        }
        
        let cancel = UIAlertAction(title: "Canelar", style: .cancel){
            action in completion(.cancel)
        }
        
        alertController.addAction(camera)
        alertController.addAction(library)
        alertController.addAction(cancel)
        controller.present(alertController,animated: true)
        
    }
    func alertInfomartion(title :String, message: String){
        let alertController: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(ok)
        controller.present(alertController, animated: true)
    }
}
