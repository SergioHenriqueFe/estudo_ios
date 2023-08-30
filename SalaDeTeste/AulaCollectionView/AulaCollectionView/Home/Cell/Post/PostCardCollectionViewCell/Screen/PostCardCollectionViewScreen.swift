//
//  PostCardCollectionViewScreen.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 27/08/23.
//

import UIKit

class PostCardCollectionViewScreen: UIView {
    
    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame:.zero,collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsVerticalScrollIndicator =  false
        cv.backgroundColor = .clear
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(collectionView)
        collectionView.pin(to: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configProtocolsCollectionView(delegate : UICollectionViewDelegate, dataSource: UICollectionViewDataSource){
        collectionView.dataSource = dataSource
        collectionView.delegate = delegate
    }

}
