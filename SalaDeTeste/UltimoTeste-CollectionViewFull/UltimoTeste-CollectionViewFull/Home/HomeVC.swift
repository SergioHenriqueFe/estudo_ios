//
//  ViewController.swift
//  UltimoTeste-CollectionViewFull
//
//  Created by Sergio henrique Ferreira on 21/08/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen : HomeScreen = HomeScreen()
    var viewModel : HomeViewModel = HomeViewModel()
    override func loadView() {
        view = homeScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen.configProtocolsCollectionView(delegate: self, datasource: self)
    }


}
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        viewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame)
    }
    
    
}

