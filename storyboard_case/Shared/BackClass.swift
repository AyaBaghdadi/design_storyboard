import UIKit

class BackClass: UIButton {
    
    override func didMoveToSuperview() {
        self.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        var responder: UIResponder? = self
        
        while responder != nil {
            responder = responder?.next
            
            if let viewController = responder as? UIViewController {
                dismissViewController(from: viewController)
                break
            }
        }
    }
    
    func dismissViewController(from viewController: UIViewController) {
            
        // Back
        
        if let navigationController = viewController.navigationController {
            // If the view controller is within a navigation stack, pop it
            navigationController.popViewController(animated: true)
        } else if viewController.presentingViewController != nil {
            // If the view controller is presented modally, dismiss it
            viewController.dismiss(animated: true, completion: nil)
        }
        
    }
}
