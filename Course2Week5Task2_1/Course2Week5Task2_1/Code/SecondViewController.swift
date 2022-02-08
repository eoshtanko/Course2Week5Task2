import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindToMainViewController(segue:UIStoryboardSegue) { }
    
    @IBAction func presentViewControllerFromXib(_ sender: Any) {
        let xibViewController = XibViewController(nibName: "ViewControllerXibFile", bundle: nil)
        self.present(xibViewController, animated: true, completion: nil)
    }
    
    @IBAction func addViewController(_ sender: Any) {
        let childViewController: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "childController")
        
        addChild(childViewController)
        view.addSubview(childViewController.view)
        childViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            childViewController.view.leftAnchor.constraint(equalTo: view.leftAnchor),
            childViewController.view.topAnchor.constraint(equalTo: view.topAnchor),
            childViewController.view.rightAnchor.constraint(equalTo: view.rightAnchor),
            childViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        childViewController.didMove(toParent: self)
    }
}
