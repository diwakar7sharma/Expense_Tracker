//
//  AddSavingsViewController.swift
//  Expense_Tracker_New
//
//  Created by Diwakar Sharma on 21/04/25.
//

import UIKit

class AddSavingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var text: UITextField!
    @IBAction func textAct(_ sender: Any) {
        lbl.text = text.text
    }
    
    @IBAction func DoneBtn(_ sender: Any) {
        if let tabBar = self.presentingViewController as? UITabBarController,
           let homeVC = tabBar.viewControllers?[0] as? HomeViewController {
            homeVC.savings = text.text
        }
        self.dismiss(animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
