import UIKit

class HomeViewController: UIViewController {
    
    var user: User?

    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    var username = ""
    var password = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        if let user = user {
            usernameLabel.text = "User: \(user.firstName) \(user.lastName) (\(user.username))"
            passwordLabel.text = "Password: \(user.password)"
            print("User data in HomeVC: \(user.firstName) \(user.lastName), \(user.username)")
            
        } else {
            usernameLabel.text = "Username: \(username)"
            passwordLabel.text = "Password: \(password)"
            print("else block")
        }
    }
}
