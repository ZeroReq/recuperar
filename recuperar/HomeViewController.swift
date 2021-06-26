//
//  HomeViewController.swift
//  recuperar
//
//  Created by user192688 on 6/25/21.
//

import UIKit
import Firebase
import FirebaseAuth

class HomeViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    private let email: String
    
    init (email: String){
        self.email = email
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Inicio"
        emailLabel.text = email
    }
    
    @IBAction func closeButtonAction (_ sender: Any){
        do {
            try Auth.auth().signOut()
            navigationController?.popViewController(animated: true)
        } catch {
            //Error
        }
    }
}
