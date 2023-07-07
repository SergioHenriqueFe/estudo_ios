//
//  CurstomTableViewCell.swift
//  16-AppTableViewCurso
//
//  Created by Sergio henrique Ferreira on 06/07/23.
//

import UIKit

    //MARK: Passo 5

class CurstomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK: passo 6 crição da func e static colocar o mesmo nome o arquivo a xib e o static let identifier
    //static é usado não necessita de instancia não tem dependencia externa
    static let identifier : String = "CurstomTableViewCell"
    
    // Func UINIB =   referencia para inidica o arquivo da xib(customtableViewCell)
    // a nib faz a referencia usando o identifier, por isso a criação do let e da func com sel.identifier
    static func nib() -> UINib{
        
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    // ciclo de vida igual  viewLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        titleLabel.text = "Sérgio"
    
    }
    
}
