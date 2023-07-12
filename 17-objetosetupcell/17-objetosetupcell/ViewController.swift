//
//  ViewController.swift
//  17-objetosetupcell
//
//  Created by Sergio henrique Ferreira on 11/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //MARK: forma correta de add imagem e string na Tableview pq é obrigado a por imagem e texto
    
    var listBrandImage:[Car] = [Car(brand: "BMW", carImage: UIImage(named: "bmw") ?? UIImage()),Car(brand: "Ferrari", carImage: UIImage(named: "ferrari") ?? UIImage()), Car(brand: "Chevrolet", carImage: UIImage(named: "chevrolet") ?? UIImage())]
    
    //MARK: forma não usual, pois se texto e esquecer a imagem da erro
//    var listCar :[String] = ["BMW", "Ferrari", "Chevrolet"]
//    var listImageCar : [String] = ["bmw","ferrari", "chevrolet"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
      
    }

    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listBrandImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier, for: indexPath) as? CarTableViewCell
        cell?.setupCell(data: listBrandImage[indexPath.row])
        return cell ?? UITableViewCell()

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Marca selcionada: \(listBrandImage[indexPath.row].brand)")
    }
}
