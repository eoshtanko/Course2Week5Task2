import UIKit

class ChildViewController: UIViewController {
    
    @IBAction func backToParent(_ sender: Any) {
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
}
