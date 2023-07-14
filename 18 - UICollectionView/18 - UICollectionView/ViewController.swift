//
//  ViewController.swift
//  18 - UICollectionView
//
//  Created by Sergio henrique Ferreira on 13/07/23.
//

import UIKit

class ViewController: UIViewController {
//MARK:  1 passo 
    @IBOutlet weak var collectionView: UICollectionView!
    
    var data :[String] = ["car1", "car2", "car3", "car4" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
        
    }
    
//MARK: 2 passo
    func configCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        // para deixar a celula com scroll horizontal || vertical 
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        
        collectionView.register(CustomCollectionViewCell.nib(),forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        
    }

}
//MARK: 3 passo
extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupCell(nameImage: data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
    
}

//MARK: 4 passo -> Criar a pasta cell e file Swift e xib



