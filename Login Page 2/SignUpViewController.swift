//
//  SignUpViewController.swift
//  Login Page 2
//
//  Created by Festim Bunjaku on 5/4/25.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signupbtn(_ sender: Any) {
        performSegue(withIdentifier: "goToHomeFromSignUp", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToHomeFromSignUp" {
            if let destinationVC = segue.destination as? HomeViewController {
                let user = User(
                    username: usernameTextField.text ?? "",
                    password: passwordTextField.text ?? "",
                    firstName: firstNameTextField.text ?? "",
                    lastName: lastNameTextField.text ?? ""
                )
                destinationVC.user = user
            }
        }
    }}

