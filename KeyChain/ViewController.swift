//
//  ViewController.swift
//  KeyChain
//
//  Created by Admin on 31/03/22.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {
    @IBOutlet weak var txtFld: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    let myKey = "my key"
    let keychain = KeychainSwift()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateValueLabel()
    }

    @IBAction func save(_ sender: Any) {
        if let text = txtFld.text {
          keychain.set(text, forKey: myKey)
          updateValueLabel()
        }
        
    }


    @IBAction func del(_ sender: Any) {
        keychain.delete(myKey)
        updateValueLabel()
    }
    
    
    @IBAction func get(_ sender: Any) {
        updateValueLabel()
    }
    
    private func updateValueLabel() {
      
      if let value = keychain.get(myKey) {
        lbl.text = "In Keychain: \(value)"
      } else {
        lbl.text = "no value in keychain"
      }
    }
    
    @IBAction func ex2BtnPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "example2segue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "example2segue"){
            _ = segue.destination as! KeychainViewController
        }
    }
    
}

