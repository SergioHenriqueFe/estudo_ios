//
//  PostCardViewModel.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 27/08/23.
//

import UIKit

class PostCardViewModel{
    
    private var listPosts : [Posts]
    init(listPosts: [Posts]){
        self.listPosts = listPosts
    }
    
    public var numberOfItems : Int {
        listPosts.count
    }
    
    public func louadCurrentStory(indexPath: IndexPath)->Posts{
        listPosts[ indexPath.row]
    }

}
