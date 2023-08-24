//
//  StoryCardCollectionViewScreen.swift
//  CriandoStories
//
//  Created by Sergio henrique Ferreira on 23/08/23.
//

import UIKit

class StoryCardCollectionViewScreen: UICollectionViewCell {
    lazy var cardView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(cardView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            cardView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -15)
        
        ])
    }
}
