//
//  StoryCollectionViewCell.swift
//  UltimoTeste-CollectionViewFull
//
//  Created by Sergio henrique Ferreira on 21/08/23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    static var identifier:String = "StoryCollectionViewCell"
    var screen :StoryCollectionViewCellScreen = StoryCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configScreen(){
        screen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
}
