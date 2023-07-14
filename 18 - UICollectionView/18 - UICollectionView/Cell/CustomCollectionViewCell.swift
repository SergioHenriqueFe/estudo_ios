//
//  CustomCollectionViewCell.swift
//  18 - UICollectionView
//
//  Created by Sergio henrique Ferreira on 14/07/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
//MARK: 6 passo
    @IBOutlet weak var carImageView: UIImageView!
    
    
//MARK: 5 passo -> criar let e a func
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() ->UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFit
    }
    func setupCell(nameImage:String){
        carImageView.image = UIImage(named: nameImage)
    }
}
