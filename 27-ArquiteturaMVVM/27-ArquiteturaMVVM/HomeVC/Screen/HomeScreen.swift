//
//  HomeScreen.swift
//  27-ArquiteturaMVVM
//
//  Created by Sergio henrique Ferreira on 16/08/23.
//

import UIKit

class HomeScreen: UIView {
    
    // Criação do elemento
    lazy var collectionView : UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false // barrinha de scrool lateral
        //TO DO: Register
        cv.register(StoryCardCollectionViewCell.self, forCellWithReuseIdentifier: StoryCardCollectionViewCell.identifier)
        cv.backgroundColor = .clear
        return cv
        
    }()
    // criação do protocol e configuração para realizar a assinatura
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSouce: UICollectionViewDataSource){
        collectionView.delegate = delegate
        collectionView.dataSource = dataSouce
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .appBackGround
        addSubview(collectionView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        collectionView.pin(to: self)
    }
    
}
