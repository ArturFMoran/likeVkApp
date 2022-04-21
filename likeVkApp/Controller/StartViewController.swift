//
//  ViewController.swift
//  likeVkApp
//
//  Created by Artur Felipe Moran on 21.04.2022.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = logInButton.frame.size.height / 2
        
        
    }

    
    @IBAction func logInButton(_ sender: UIButton) {
        performSegue(withIdentifier: "knotSegue", sender: nil)
    }
    

}

