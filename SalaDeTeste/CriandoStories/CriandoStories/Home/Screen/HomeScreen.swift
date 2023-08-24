//
//  HomeScreen.swift
//  CriandoStories
//
//  Created by Sergio henrique Ferreira on 23/08/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsHorizontalScrollIndicator = false
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .blue
        return cv
    }()
    
    public func configProtocolsCollectionView( delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource){
        
        collectionView.dataSource = dataSource
        collectionView.delegate = delegate
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBrown
        addElements()
        configConstains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(collectionView)
    }
    
    private func configConstains(){
        collectionView.pin(to: self)
    }
    
}
