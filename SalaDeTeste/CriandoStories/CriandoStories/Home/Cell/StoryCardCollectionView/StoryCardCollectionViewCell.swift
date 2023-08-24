//
//  StoryCardCollectionViewCell.swift
//  CriandoStories
//
//  Created by Sergio henrique Ferreira on 23/08/23.
//

import UIKit

class StoryCardCollectionViewCell: UICollectionViewCell {
    var screen : StoryCardCollectionViewScreen = StoryCardCollectionViewScreen()
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
