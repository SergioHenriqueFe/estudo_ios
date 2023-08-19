//
//  HomeViewModel.swift
//  27-ArquiteturaMVVM
//
//  Created by Sergio henrique Ferreira on 16/08/23.
//

import UIKit
// criação
class HomeViewModel {
    
    private var story = [
        Stories(image: "img1", userName: "Add Story"),
        Stories(image: "img2", userName: "Jack"),
        Stories(image: "img3", userName: "Carolina"),
        Stories(image: "img4", userName: "Samuel"),
        Stories(image: "img5", userName: "Ariana Josep"),
        Stories(image: "img6", userName: "puggy_101"),
        Stories(image: "img7", userName: "dheeraj_ks"),
        
    ]
    // variavel computada
    public var getListStory:[Stories]{
        story
    }
    
    public var numberOfItems : Int {
        1
    }
    
    public func sizeForItem(indexPath: IndexPath, frame:CGRect) -> CGSize{
        if indexPath.row == 0{
            return CGSize(width: 120, height: frame.height)
                
        }else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
}
