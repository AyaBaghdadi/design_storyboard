//
//  SideMenuVC.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 7/9/24.
//

import UIKit

class SideMenuVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var myResult:[(String, String)]! = [
        ("Profile","profile"),
        ("Notifications & Messages","notification"),
        ("All Reviews","reviews"),
        ("My Address","address"),
        ("Orders","orders"),
        ("Dark Mode","dark_light"),
        ("Contact Us","contact_us"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.AssignXIB()
        
    }
    

}
