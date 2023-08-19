//
//  StoryCardCollectionViewCellScreen.swift
//  27-ArquiteturaMVVM
//
//  Created by Sergio henrique Ferreira on 16/08/23.
//

import UIKit

class StoryCardCollectionViewCellScreen: UIView {
 
    lazy var cardView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.setCardShadow()
        return view
 
    }()
    
    lazy var collectionView : UICollectionView = {
        let layout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame:.zero, collectionViewLayout:  layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsVerticalScrollIndicator = false
        cv.register(StoryCollectionViewCell.self
                    , forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        cv.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        cv.backgroundColor = .clear
        return cv 
    }()
    
    public func configProtocolCollectionView(delegate: UICollectionViewDelegate, dataSouce: UICollectionViewDataSource){
        collectionView.delegate = delegate
        collectionView.dataSource = dataSouce
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(cardView)
        cardView.addSubview(collectionView)
        collectionView.pin(to: cardView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
            cardView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -15),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
           
        ])
    }
}
