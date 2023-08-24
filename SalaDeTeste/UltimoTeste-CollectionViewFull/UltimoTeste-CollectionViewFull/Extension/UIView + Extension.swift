//
//  UIView + Extension.swift
//  UltimoTeste-CollectionViewFull
//
//  Created by Sergio henrique Ferreira on 21/08/23.
//

import Foundation
import UIKit

extension UIView {
    
    func shadowCard(){
        layer.masksToBounds = false
        layer.shouldRasterize = true
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.rasterizationScale = UIScreen.main
            .scale
    }
    
    func pin(to superView : UIView){
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor)
        ])
    }
}
