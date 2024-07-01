//
//  BoardDelegate.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 6/9/24.
//

import UIKit

extension HomeVC :  UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == collectionViewCategories {
            return 20
        }else if collectionView == collectionViewCategoriesSecond {
            return 20
        }else if collectionView == collectionViewCategoriesThird {
            return 20
        }else{ //
            
            collectionViewRestHeight.constant = 5 * 270
            return 5
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionViewCategories {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            
            
            return cell
            
        }else if collectionView == collectionViewCategoriesSecond {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            
            
            return cell
            
        }else if collectionView == collectionViewCategoriesThird {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            
            
            return cell
            
        }else{
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            
            
            return cell
            
        }
        
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                    
        if collectionView == collectionViewCategories {
            
            let itemWidth = collectionView.bounds.width / 2.2
            
            let itemHeight = collectionView.bounds.height
            
            return CGSize(width: itemWidth, height: itemHeight)
            
        }else if collectionView == collectionViewCategoriesSecond {
            
            let itemWidth = collectionView.bounds.width / 2.2
            
            let itemHeight = collectionView.bounds.height
            
            return CGSize(width: itemWidth, height: itemHeight)
            
        }else if collectionView == collectionViewCategoriesThird {
            
            let itemWidth = collectionView.bounds.width / 3
            
            let itemHeight = collectionView.bounds.height
            
            return CGSize(width: itemWidth, height: itemHeight)
            
        }else{
            
            let itemWidth = collectionView.bounds.width
                        
            return CGSize(width: itemWidth, height: 270)
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
        
    }
    
    func AssignXIB() {
                        
        collectionViewCategories.register(UINib(nibName: "Category", bundle: nil), forCellWithReuseIdentifier: "cell")
        collectionViewCategoriesSecond.register(UINib(nibName: "CategorySecond", bundle: nil), forCellWithReuseIdentifier: "cell")
        collectionViewCategoriesThird.register(UINib(nibName: "CategoryThird", bundle: nil), forCellWithReuseIdentifier: "cell")
        collectionViewRest.register(UINib(nibName: "Resturant", bundle: nil), forCellWithReuseIdentifier: "cell")

    }
}
