//
//  HomeViewModel.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 21/08/23.
//

import UIKit

class HomeViewModel {
    private var posts = [
        Posts(profileImage: "img2", userName: "jack", postImage: "post1"),
        Posts(profileImage: "img4", userName: "samuel", postImage: "post2"),
        Posts(profileImage: "img3", userName: "jaJck", postImage: "post3"),
        Posts(profileImage: "img6", userName: "2jack", postImage: "post4"),
    
    ]
    // para passar a lista acima de privado para public
    public var getListPost:[Posts]{
        posts
    }
    private var story = [
        Stories(image: "img1", userName: "add Story"),
        Stories(image: "img2", userName: "jack"),
        Stories(image: "img3", userName: "carolina"),
        Stories(image: "img4", userName: "samuel"),
        Stories(image: "img5", userName: "ariana josep"),
        Stories(image: "img6", userName: "puggy_101"),
        Stories(image: "img7", userName: "dheeraj_ks")
    ]
    // para o retorno -- > tipo da variavel computada.
    public var getListStory:[Stories]{
        story
    }
    
    public var numberOfItems: Int{
        2
    }
    
    public func sizeForItem(indexPath : IndexPath, frame:CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height)
        }else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
    
    
}
