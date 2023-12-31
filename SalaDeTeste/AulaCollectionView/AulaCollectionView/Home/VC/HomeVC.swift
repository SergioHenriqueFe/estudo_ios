//
//  ViewController.swift
//  AulaCollectionView
//
//  Created by Sergio henrique Ferreira on 20/08/23.
//

import UIKit

class HomeVC: UIViewController {
    
    
    private var homeScreen: HomeScreen?
    private var viewModel: HomeViewModel = HomeViewModel()
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.configProtocolCollectionView(delegate: self, dataSource: self)
        viewModel.fetchAllRequest()
    }


}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCardCollectionViewCell.identifier, for: indexPath) as? StoryCardCollectionViewCell
            cell?.setupCell(listStory: viewModel.getListStory)
            return cell ?? UICollectionViewCell()
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCardCollectionViewCell.identifer, for: indexPath) as? PostCardCollectionViewCell
            cell?.setupCell(listPosts: viewModel.getListPost)
            return cell ?? UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        viewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame)
    }
    
    
}

