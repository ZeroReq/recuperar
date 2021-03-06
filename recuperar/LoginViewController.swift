//
//  LoginViewController.swift
//  recuperar
//
//  Created by user192688 on 6/3/21.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    func application(_ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions:
            [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
    @IBAction func TapToClose(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        if let email = emailText.text, let password = passwordText.text {
            
            Auth.auth().signIn(withEmail: email, password: password) {
                (result, error) in
                if let result = result, error == nil {
                    self.navigationController?.pushViewController(HomeViewController(email: result.user.email!), animated: true)
                } else {
                    let alertController = UIAlertController(title: "Error", message: "Error al registrar el usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    
    
    /*
    */
}
