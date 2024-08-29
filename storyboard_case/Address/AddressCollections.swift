//
//  BoardDelegate.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 6/9/24.
//

import UIKit

extension AddressVC :  UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.myResult?.count ?? 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! AddressCVC
            
        cell.titleCell.text = self.myResult?[indexPath.row].0
        
        cell.desCell.text = self.myResult?[indexPath.row].1

        return cell
 
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        

            let itemWidth = collectionView.bounds.width
                        
            return CGSize(width: itemWidth, height: 200)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
        
    }
    
    func AssignXIB() {
                        
        collectionView.register(UINib(nibName: "Address", bundle: nil), forCellWithReuseIdentifier: "cell")

    }
    
}
