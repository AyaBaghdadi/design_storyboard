//
//  ViewController.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 6/9/24.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var collectionViewRestHeight: NSLayoutConstraint!
    @IBOutlet weak var collectionViewRest: UICollectionView!
    
    @IBOutlet weak var collectionViewCategoriesThird: UICollectionView!
    @IBOutlet weak var collectionViewCategoriesSecond: UICollectionView!
    @IBOutlet weak var collectionViewCategories: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.AssignXIB()
        
        // For Make Action after time
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {

            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "CouponOfferVC")
            vc.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)

            // For Appear as a sub View
            UIView.transition(with: self.view, duration: 0.50, options: [.transitionCrossDissolve], animations: {
                self.addChild(vc)
                self.view.addSubview(vc.view)
            }, completion: nil)
            
            
        })
        
    }

    

}

