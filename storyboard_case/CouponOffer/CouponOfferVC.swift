//
//  CouponOfferVC.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 7/3/24.
//

import UIKit

class CouponOfferVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func getCouponTapped(_ sender: Any) {
        UIPasteboard.general.string = "#technicalisto"
    }
    
    @IBAction func closeTapped(_ sender: Any) {
        UIView.transition(with: self.view, duration: 0.30, options: [.transitionCrossDissolve], animations: {
            self.removeFromParent()
            self.view.removeFromSuperview()
        }, completion: nil)
    }
    
}
