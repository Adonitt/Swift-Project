//
//  ForgotPasswordViewController.swift
//  Login Page 2
//
//  Created by Festim Bunjaku on 5/4/25.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sendLinkBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToLogin", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToLogin" {
            if let destinationVC = segue.destination as? LoginViewController {
                destinationVC.email = emailLabel.text!
            }
        }
        
    }
}
  
