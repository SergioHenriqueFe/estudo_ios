//
//  UIView + Extension.swift
//  CriandoStories
//
//  Created by Sergio henrique Ferreira on 23/08/23.
//

import Foundation
import UIKit

extension UIView {
    
    
    
    func pin(to  superView: UIView){
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
        
        ])
    }
    
}
