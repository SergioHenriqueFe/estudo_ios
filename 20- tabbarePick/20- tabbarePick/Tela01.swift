//
//  ViewController.swift
//  20- tabbarePick
//
//  Created by Sergio henrique Ferreira on 02/08/23.
//

import UIKit

class Tela01: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var editPictureButton: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var data :[Profile] = []
    let imagePicker : UIImagePickerController = UIImagePickerController()
    var alert:AlertController?
    
    override func viewDidLoad() {
        alert = AlertController(controller: self)
        configTableView()
        configItem()
        configImagePicker()
        super.viewDidLoad()
    }
    
    func configImagePicker(){
        imagePicker.delegate = self
    }
    func configItem(){
        // borda da imagem arredondada
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
    }
    func configTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
        addButton.isEnabled = false
        addButton.setTitleColor(.black.withAlphaComponent(0.4), for: .disabled)
        addButton.setTitleColor(.black, for: .normal)
        
    }

    @IBAction func tappedEditPictureButton(_ sender: UIButton) {
       
        self.alert?.chooseImage(completion: { option in
            switch option {
            case .camera:
                if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                    self.imagePicker.sourceType = .photoLibrary
                        } else {
                            self.imagePicker.sourceType = .camera
                        }
                self.present(self.imagePicker, animated: true)
            case .library:
                self.imagePicker.sourceType = .photoLibrary
                self.present(self.imagePicker, animated: true)
            case .cancel:
                break
            }
        })
       
        
        imagePicker.allowsEditing = false
//        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
//            imagePicker.sourceType = .photoLibrary
//        } else {
//            imagePicker.sourceType = .camera
//        }
//        present(imagePicker, animated: true)
        
    }
    @IBAction func tappedAddButton(_ sender: Any) {
        if nameTextField.text == ""{
            self.alert?.alertInfomartion(title: "Atenção", message: "Completo as informações")
            
        }else {
            data.append(Profile(name: nameTextField.text ?? "", photo: profileImageView.image ?? UIImage()))
            tableView.reloadData()
            nameTextField.text = ""
            profileImageView.image = UIImage(systemName: "person.circle.fill")
        }
        
    }
    
}

extension Tela01 : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(profile: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 189
        
    }
}
//protocolo para acessar a galeria
extension Tela01 : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            self.profileImageView.image = image
        }
        picker.dismiss(animated: true,completion:  nil)
    }
}

