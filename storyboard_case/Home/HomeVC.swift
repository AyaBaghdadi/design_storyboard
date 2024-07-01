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
        
    }


}

