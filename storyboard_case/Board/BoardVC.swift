//
//  BoardVC.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 6/9/24.
//

import UIKit
import IBAnimatable

class BoardVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var getStartBtn: AnimatableButton!
    @IBOutlet weak var nextView: UIStackView!
    
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.AssignXIB()
        self.startUI()
        
    }
    
    func startUI(){
        
        self.getStartBtn.isHidden = true
        
    }
    
    @IBAction func nextTapped(_ sender: Any) {
        
        /// Because count is --> 4
        
        if currentIndex < 3 {
            
            currentIndex += 1
            let indexPath = IndexPath(item: currentIndex, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            
        } else {
            
            /// Perform your action here when the last item is reached
            self.performLastItemAction()
            
        }
        
    }
    
    func performLastItemAction() {
        // Your custom action for the last item
        print("Last item reached, perform action!")
        
        self.nextView.isHidden = true
        self.getStartBtn.isHidden = false

    }
    
    func forSwipeFromUser(){
        
        if currentIndex < 3 {
            
            self.nextView.isHidden = false
            self.getStartBtn.isHidden = true
            
        } else {
            
            self.performLastItemAction()
            
        }
        
    }
    
    @IBAction func skipTapped(_ sender: Any) {
        // Begin App
    }
    
    @IBAction func getStartTapped(_ sender: Any) {
        // Begin App
    }
    
}
