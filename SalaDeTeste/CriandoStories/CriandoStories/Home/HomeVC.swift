//
//  ViewController.swift
//  CriandoStories
//
//  Created by Sergio henrique Ferreira on 23/08/23.
//

import UIKit

class HomeVC: UIViewController {
    var homeScreen : HomeScreen?
    var homeViewModel : HomeViewModel = HomeViewModel()
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.configProtocolsCollectionView(delegate: self, dataSource: self)
    }

}

extension HomeVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        homeViewModel.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        homeViewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame)
    }
    
    
}

