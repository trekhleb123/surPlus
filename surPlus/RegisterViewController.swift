//
//  RegisterViewController.swift
//  surPlus
//
//  Created by Alona Trekhlib on 4/23/19.
//  Copyright © 2019 Alona Trekhlib. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        // TODO: Set up a new user on Firebase
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                //success
                print("Registration Successfull")
                self.performSegue(withIdentifier: "goToHomeFromRegister", sender: self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
