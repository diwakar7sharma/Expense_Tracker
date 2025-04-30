//
//  ViewController.swift
//  Expense_Tracker
//
//  Created by Diwakar Sharma on 12/04/25.
//

import UIKit
import WebKit

class ViewController: UIViewController , UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBOutlet weak var usr: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    @IBAction func loginBtn(_ sender: Any) {
        if usr.text == "user" && pass.text == "123"{
            performSegue(withIdentifier: "Home", sender: nil)
        }
        else{
            let alrt = UIAlertController(title: "Incorrect Credentials!", message: "Check your username and password and try again.", preferredStyle: .alert)
            alrt.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alrt, animated: true)
        }
    }
    
    @IBAction func register(_ sender: Any) {
        performSegue(withIdentifier: "reg", sender: nil)
    }
}

