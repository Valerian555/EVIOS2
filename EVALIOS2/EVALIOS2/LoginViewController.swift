//
//  LoginViewController.swift
//  EVALIOS2
//
//  Created by Student08 on 08/08/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var loginHeader: UIImageView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var loginType: String?
    
    //MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //envoie de l'information du type de login choisis
        if (loginType == "google") {
            loginHeader.image = UIImage(named: "google_header 2")
        } else if (loginType == "facebook") {
            loginHeader.image = UIImage(named: "faceook_header")
        }
        
        //fermer le clavier lors d'un tap dans la vue
        let tapOnView = UITapGestureRecognizer(target: view, action:
                                                #selector(UIView.endEditing))
        view.addGestureRecognizer(tapOnView)
        
    }
    
    @IBAction func closeModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapLogin(_ sender: Any) {
        
        //validation du login
        let emailIsValid = isValidEmail(loginTextField.text)
        let emailIsNotEmpty = !loginTextField.text!.isEmpty
        let passwordIsNotEmpty = !passwordTextField.text!.isEmpty
        
        if (emailIsValid && emailIsNotEmpty && passwordIsNotEmpty) {
            if let customTabBarController = storyboard?.instantiateViewController(identifier: "CustomTabBarController") as? CustomTabBarController {
                
                customTabBarController.modalPresentationStyle = .fullScreen
                
                present(customTabBarController, animated: false)
            }
        } else {
            //déclarer
            let alert = UIAlertController(title: "Error", message: "Login and/or email invalid", preferredStyle:
                    .alert)
            
            //add buttons
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            //afficher
            present(alert, animated: true, completion: nil)
        }
    }
    
    func isValidEmail(_ email: String?) -> Bool {
        if let email = email, email.contains("@"), !email.contains(" ") {
            return true
        }
        return false
    }
}

