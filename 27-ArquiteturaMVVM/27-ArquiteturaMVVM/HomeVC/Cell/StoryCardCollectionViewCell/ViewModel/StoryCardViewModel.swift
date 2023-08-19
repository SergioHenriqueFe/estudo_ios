//
//  StoryCardViewModel.swift
//  27-ArquiteturaMVVM
//
//  Created by Sergio henrique Ferreira on 16/08/23.
//

import UIKit

class StoryCardViewModel {
    
    private var listStory: [Stories]
    init(listStory: [Stories]){
        self.listStory = listStory
    }
    
    public var numberOfItems: Int {
        listStory.count
    }
    func loudCurrentStory(indexPath:IndexPath) -> Stories {
        listStory[indexPath.row]
    }
    
    
}
