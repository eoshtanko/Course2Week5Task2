import UIKit

class ThirdViewController: UIViewController {
    
    var text: String?
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let receivedText = text {
            textLabel.text = receivedText
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "unwindToInitialVC", sender: nil)
    }
}
