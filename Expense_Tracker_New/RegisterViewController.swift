//
//  RegisterViewController.swift
//  Expense_Tracker
//
//  Created by Diwakar Sharma on 12/04/25.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        regPass.resignFirstResponder()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBOutlet weak var regName: UITextField!
    @IBOutlet weak var regUsr: UITextField!
    @IBOutlet weak var regPass: UITextField!
    @IBOutlet weak var regcnfPass: UITextField!
    
    @IBAction func signup(_ sender: Any) {
        
    }
    
    @IBAction func lgn(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
