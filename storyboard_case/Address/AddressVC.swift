//
//  AddressVC.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 8/29/24.
//

import UIKit

class AddressVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var myResult:[(String, String)]! = [
        
        ("100 Flushcombe Road,Albury 2148 100 Flushcombe Road,Albury 2148","100 Flushcombe Road,Albury 2148 100 Flushcombe Road,Albury 2148 100 Flushcombe Road,Albury 2148"),
        
        ("Work Egypt","100 Boulevard Alexis-Nihon,Suite 310,Montreal,H4M 2N7,Canada"),
        
        ("Site Saudi Arabia","Kucukayasofya Mah. Donus SOKAK Uyar Apt. No:3 34000 Istanbul,Turkey"),
        
        ("Home Family","70 Park Street West, Hatfield, City of Tshwane, Gauteng , 455 Larkspur Dr. Apt 23,L.A.,92808 , Funtkova 46,1000 LJUBLJANA , Sibirska 48,83102 BRATISLAVA - 100 Mount Eden Road,Mount Eden,Auckland 5022"),
        
        ("My Sister Home","Zeganska 2,04-713,Warszawa"),
        
        ("Home","100 Flushcombe Road,Albury 2148"),
        
        ("Work Egypt","100 Boulevard Alexis-Nihon,Suite 310,Montreal,H4M 2N7,Canada"),
        
        ("Site Saudi Arabia","Kucukayasofya Mah. Donus SOKAK Uyar Apt. No:3 34000 Istanbul,Turkey"),
        
        ("Home Family","70 Park Street West, Hatfield, City of Tshwane, Gauteng , 455 Larkspur Dr. Apt 23,L.A.,92808 , Funtkova 46,1000 LJUBLJANA , Sibirska 48,83102 BRATISLAVA - 100 Mount Eden Road,Mount Eden,Auckland 5022"),
        
        ("My Sister Home","Zeganska 2,04-713,Warszawa"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.AssignXIB()

        // Set the flow layout to enable dynamic sizing
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize  // Enable dynamic size
        }

    }

}
