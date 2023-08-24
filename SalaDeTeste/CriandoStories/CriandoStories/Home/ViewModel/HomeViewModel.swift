//
//  HomeViewModel.swift
//  CriandoStories
//
//  Created by Sergio henrique Ferreira on 23/08/23.
//

import UIKit

class HomeViewModel: NSObject {
    
    public var numberOfItems : Int {
        1
    }
    
    public func sizeForItem(indexPath: IndexPath,frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
                return CGSize(width:120, height: frame.height)
            } else {
                return CGSize(width: frame.width - 120, height: frame.height)
            }
        }
}
