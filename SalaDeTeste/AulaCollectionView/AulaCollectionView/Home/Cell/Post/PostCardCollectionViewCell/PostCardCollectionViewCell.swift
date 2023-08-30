//
//  PostCardCollectionViewCell.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 27/08/23.
//

import UIKit

class PostCardCollectionViewCell: UICollectionViewCell {
    
    private var screen :PostCardCollectionViewScreen = PostCardCollectionViewScreen()
    private var viewmodel:PostCardViewModel?
    static let identifer:String = "PostCardCollectionViewCell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
        screen.configProtocolsCollectionView(delegate: self, dataSource:self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen(){
        screen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
    public func setupCell(listPosts:[Posts]){
        viewmodel = PostCardViewModel(listPosts: listPosts)
    }
    
}
    
    extension PostCardCollectionViewCell :UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewmodel?.numberOfItems ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return UICollectionViewCell()
    }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width, height:  450)
        }
    
}
    

