//
//  CarTableViewCell.swift
//  17-objetosetupcell
//
//  Created by Sergio henrique Ferreira on 11/07/23.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    
    static let identifier :String = "CarTableViewCell"
    
    static func nib()->UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // para mudar a seleção da cor ao clicar 
        self.selectionStyle = .none
    }
    func setupCell(data: Car){
        brandLabel.text = data.brand
        carImageView.image = data.carImage

    }
    
}
