//
//  StoryCardViewModel.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 22/08/23.
//

import UIKit

class StoryCardViewModel{
    
    private var listStory : [Stories]
    init(listStory: [Stories]){
        self.listStory = listStory
    }
    
    public var numberOfItems : Int {
        listStory.count
    }
    
    func louadCurrentStory(indexPath: IndexPath)->Stories{
        listStory[ indexPath.row]
    }
    
}
