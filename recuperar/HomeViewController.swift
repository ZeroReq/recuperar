//
//  HomeViewController.swift
//  recuperar
//
//  Created by user192688 on 6/25/21.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UIView!
    @IBOutlet weak var closeButton: UIView!
    
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
        title = "Home"
    }
    
    @IBAction func closeButtonAction (_ sender: Any){
        
    }
}
