//
//  ViewController.swift
//  UsandoUIImagePicker
//
//  Created by Sergio henrique Ferreira on 02/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testeImageView: UIImageView!
    
    @IBOutlet weak var pressButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedPressButto(_ sender: UIButton) {
        let pickerImage = UIImagePickerController()
        pickerImage.delegate = self
        pickerImage.sourceType = .photoLibrary
        present(pickerImage,animated:  true, completion:  nil)
    }
    
}

extension ViewController : UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            testeImageView.image = pickedImage
        }
        picker.dismiss(animated: true,completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true,completion:  nil)
    }
}

