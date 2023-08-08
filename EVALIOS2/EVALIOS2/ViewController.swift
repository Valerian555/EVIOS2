//
//  ViewController.swift
//  EVALIOS2
//
//  Created by Student08 on 08/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openGoogleLogin(_ sender: Any) {
        
        if let loginViewController = storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController {
            
            loginViewController.loginType = "google"
            
            loginViewController.modalPresentationStyle = .fullScreen
            
            present(loginViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func openFacebookLogin(_ sender: Any) {
        
        if let loginViewController = storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController {
            
            loginViewController.loginType = "facebook"
            
            loginViewController.modalPresentationStyle = .fullScreen
            
            present(loginViewController, animated: true, completion: nil)
        }
    }
}

