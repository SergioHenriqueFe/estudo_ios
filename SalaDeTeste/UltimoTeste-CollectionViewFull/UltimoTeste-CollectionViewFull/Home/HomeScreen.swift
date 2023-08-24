//
//  HomeScreen.swift
//  UltimoTeste-CollectionViewFull
//
//  Created by Sergio henrique Ferreira on 21/08/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv:UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .appBackgroundColor
        cv.showsHorizontalScrollIndicator = false
        cv.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        return cv
    }()
    
    public func configProtocolsCollectionView(delegate : UICollectionViewDelegate, datasource: UICollectionViewDataSource){
        collectionView.delegate = delegate
        collectionView.dataSource = datasource
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configCosntraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(collectionView)
    }
    
    private func configCosntraints(){
        collectionView.pin(to: self)
    }
    
}
