//
//  SideMenuClass.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 8/14/24.
//

import UIKit

class SideMenuAppear: UIButton {
    
    override func didMoveToSuperview() {
        self.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        var responder: UIResponder? = self
        
        while responder != nil {
            responder = responder?.next
            
            if let viewController = responder as? UIViewController {
                presentSideMenu(from: viewController)
                break
            }
        }
    }
    
    func presentSideMenu(from viewController: UIViewController) {
        // Instantiate the SideMenuVC
        let storyboard = UIStoryboard(name: "Main", bundle: nil) // Make sure the storyboard name is correct
        guard let sideMenuVC = storyboard.instantiateViewController(withIdentifier: "SideMenuVC") as? SideMenuVC else { return }

        // Set the presentation style
        sideMenuVC.modalPresentationStyle = .overCurrentContext
        
        // Add the custom CATransition for sliding from the left
        let transition = CATransition()
        transition.duration = 0.4 // Adjust the duration as needed
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        viewController.view.window!.layer.add(transition, forKey: kCATransition)
        
        // Present the side menu without animation (handled by CATransition)
        viewController.present(sideMenuVC, animated: false)
    }

    
}


class SideMenuHide: UIButton {
    
    override func didMoveToSuperview() {
        self.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        var responder: UIResponder? = self
        
        while responder != nil {
            responder = responder?.next
            
            if let viewController = responder as? UIViewController {
                dismissSideMenu(from: viewController)
                break
            }
        }
    }
    
    
    func dismissSideMenu(from viewController: UIViewController) {
        // Add the custom CATransition for sliding out to the left
        let transition = CATransition()
        transition.duration = 0.4 // Adjust the duration as needed
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        viewController.view.window?.layer.add(transition, forKey: kCATransition)
        
        // Dismiss the side menu without animation (handled by CATransition)
        viewController.dismiss(animated: false, completion: nil)
    }

    
}
