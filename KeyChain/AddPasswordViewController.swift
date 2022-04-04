//
//  AddPasswordViewController.swift
//  KeyChain
//
//  Created by Admin on 04/04/22.
//

import UIKit
import KeychainSwift

class AddPasswordViewController: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var msgLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePassBtnPressed(_ sender: Any) {
        let keychain = KeychainSwift()
        let password = passwordTextField.text
        let confirmPassword = confirmPasswordTextField.text
        
        if password == confirmPassword{
            keychain.set(password!, forKey: "password")
            msgLbl.text = "Your Password Save Successfully"
            msgLbl.textColor = .green
            dismiss(animated: true, completion: nil)
        }else{
            msgLbl.text = "Password dosen't match"
            msgLbl.textColor = .systemRed
        }
    }

}
