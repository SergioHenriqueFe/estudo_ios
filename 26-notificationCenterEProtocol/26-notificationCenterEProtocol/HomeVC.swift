//
//  ViewController.swift
//  26-notificationCenterEProtocol
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
        view.backgroundColor = .black
        homeScreen?.delegate(delegate: self)
        cofigObserver()
    }
    //diferença entre notificationCenter é para todos e o protocolo é direcionado 
    //uso do notificationCenter é uma bazuca, (não é uma boa pratica de mercado), uso : tableBar,
//quem irá escutar o observador
    //1 quem é a class responsavel
    //2selector : metodo de ação -- é necessário criar uma func em objc
    func cofigObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook(notification:)), name: Notification.Name("mac"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateIphone(notification:)), name: Notification.Name("iphone"), object: nil)
    }
    @objc func updateMacbook(notification: NSNotification) {
        homeScreen?.logoImageView.image = UIImage(systemName: "iphone")
        homeScreen?.descriptionLabel.text = "teste"
        view.backgroundColor = .green
    }
    @objc func updateIphone(notification: NSNotification){
        view.backgroundColor = .red
    }
}

extension HomeVC: HomeScreenProtocol {
    func tappedChooseButton() {
        let vc :SelectionVC = SelectionVC()
        present(vc, animated: true)
//        vc.modalPresentationStyle = .fullScreen
        vc.delegate(delegate: self)
    }
    
    
}

extension HomeVC: SelectionVCProtocol{
    func updatemacbook() {
        view.backgroundColor = .green
        homeScreen?.descriptionLabel.textx= "Teste protocolo"

    }
    
    func updateIphone() {
        view.backgroundColor = .red
    }
    
    
    
}

