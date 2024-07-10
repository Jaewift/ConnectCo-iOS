//
//  StoreImageCollectionViewCell.swift
//  ConneCo
//
//  Created by jaegu park on 6/23/24.
//

import UIKit

class StoreImageCollectionViewCell: UICollectionViewCell {
    
}

extension StoreDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: StoreImageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoreImage_CollectionViewCell", for: indexPath) as! StoreImageCollectionViewCell
        
        return cell
    }
}
