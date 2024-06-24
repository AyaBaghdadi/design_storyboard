//
//  BoardDelegate.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 6/9/24.
//

import UIKit

extension BoardVC :  UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BoardCVC
        
        if indexPath.row == 0 {
            
            cell.headerCell.text = "All your favorites"
            cell.contentCell.text = "Get all your loved foods in one once place,you just place the orer we do the rest"
            cell.pageControlCell.currentPage = 0
            cell.imgCell.image = UIImage(named: "board_1")
            
        }else if indexPath.row == 1 {
            
            cell.headerCell.text = "Technicalisto"
            cell.contentCell.text = "Try Design with us .."
            cell.pageControlCell.currentPage = 1
            cell.imgCell.image = UIImage(named: "board_2")

        }else if indexPath.row == 2 {
            
            cell.headerCell.text = "Order from choosen chef"
            cell.contentCell.text = "Get all your loved foods in one once place,you just place the orer we do the rest"
            cell.pageControlCell.currentPage = 2
            cell.imgCell.image = UIImage(named: "board_3")

        }else { // 4 & other
            
            cell.headerCell.text = "Free delivery offers"
            cell.contentCell.text = "Get all your loved foods in one once place,you just place the orer we do the rest"
            cell.pageControlCell.currentPage = 3
            cell.imgCell.image = UIImage(named: "board_4")

        }
        
        return cell

    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let visibleCells = collectionView.visibleCells
        if let firstVisibleCell = visibleCells.first,
           let indexPath = collectionView.indexPath(for: firstVisibleCell) {
            currentIndex = indexPath.item
            forSwipeFromUser()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                    
            let itemWidth = collectionView.bounds.width
            
            let itemHeight = collectionView.bounds.height
            
            return CGSize(width: itemWidth, height: itemHeight)
     
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
        
    }
    
    func AssignXIB() {
                        
        collectionView.register(UINib(nibName: "Board", bundle: nil), forCellWithReuseIdentifier: "cell")

    }
}
