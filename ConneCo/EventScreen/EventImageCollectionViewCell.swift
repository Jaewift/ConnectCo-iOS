//
//  EventImageCollectionViewCell.swift
//  ConneCo
//
//  Created by jaegu park on 5/29/24.
//

import UIKit

class EventImageCollectionViewCell: UICollectionViewCell {
    
}

extension EventDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: EventImageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventImage_CollectionViewCell", for: indexPath) as! EventImageCollectionViewCell
        
        return cell
    }
}
