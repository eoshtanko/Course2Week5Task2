import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var myTextField : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTextField.delegate = self
    }
    
    @IBAction func toThirdVCButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toThirdVC", sender: nil)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ThirdViewController {
            if let textToPass = myTextField.text {
               destination.text = textToPass
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
