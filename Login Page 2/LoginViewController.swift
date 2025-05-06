
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if email.isEmpty {
            emailLabel.isHidden = true
        } else {
            emailLabel.isHidden = false
            emailLabel.text = "A link has been sent to: \(email)"
        }    }
    
    @IBAction func loginBnt(_ sender: Any) {
        performSegue(withIdentifier: "goToHome", sender: self)
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToHome" {
            if let destinationVC = segue.destination as? HomeViewController {
                destinationVC.username = usernameTextField.text ?? ""
                destinationVC.password = passwordTextField.text ?? ""
            }
        }
    }
}
