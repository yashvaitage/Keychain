//
//  KeychainViewController.swift
//  KeyChain
//
//  Created by Admin on 04/04/22.
//

import UIKit
import KeychainSwift

class KeychainViewController: UIViewController {

    @IBOutlet weak var lblMsgPrint: UILabel!
    @IBOutlet weak var pswdTxtFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginBtnPressed(_ sender: Any) {
        let keychain = KeychainSwift()
        let password = keychain.get("password")
        let passwordCheck = pswdTxtFld.text
        
        if passwordCheck == password{
            lblMsgPrint.text = "Login Success"
            lblMsgPrint.textColor = .systemGreen
            self.performSegue(withIdentifier: "login", sender: (Any).self)
        }else{
            lblMsgPrint.text = "Password Incorrect"
            lblMsgPrint.textColor = .red
        }
    }
    
    @IBAction func addPasswordBtnPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "addPassword", sender: (Any).self)
        
       
//        let addPsswordVC = AddPasswordViewController(nibName: nil, bundle: nil)
//        self.navigationController?.pushViewController(addPsswordVC, animated: true)

    }
    
}
