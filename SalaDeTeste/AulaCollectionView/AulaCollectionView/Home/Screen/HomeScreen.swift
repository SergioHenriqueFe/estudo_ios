//
//  HomeScreen.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 20/08/23.
//

import UIKit

class HomeScreen: UIView {
    lazy var collection : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv : UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.register(StoryCardCollectionViewCell.self, forCellWithReuseIdentifier: StoryCardCollectionViewCell.identifier)
        cv.register(PostCardCollectionViewCell.self, forCellWithReuseIdentifier: PostCardCollectionViewCell.identifer)
        cv.backgroundColor = .clear
        return cv
    }()
    
    public func configProtocolCollectionView(delegate : UICollectionViewDelegate, dataSource : UICollectionViewDataSource){
        collection.dataSource = dataSource
        collection.delegate = delegate
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configCollectionView()
        backgroundColor = .appBackGroundColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(collection)
    }
    
    private func configCollectionView(){
        collection.pin(to: self)
    }
    
}
