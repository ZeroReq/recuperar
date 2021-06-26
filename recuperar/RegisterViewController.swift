//
//  RegisterViewController.swift
//  recuperar
//
//  Created by user192688 on 6/25/21.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBAction func registerButtonAction(_ sender: Any) {
        if let email = emailText.text, let password = passwordText.text {
            
            Auth.auth().createUser(withEmail: email, password: password) {
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
    
    
    @IBAction func TapToClose(_ sender: Any) {
        self.view.endEditing(true)
    }
    
}
