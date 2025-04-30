//
//  AddExpenseVCViewController.swift
//  Expense_Tracker_New
//
//  Created by Diwakar Sharma on 21/04/25.
//

import UIKit

class AddExpenseVCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var lbl: UILabel!
    @IBAction func inputAct(_ sender: Any) {
        lbl.text = input.text
    }
    @IBAction func doneBt(_ sender: Any) {
        if let tabBar = self.presentingViewController as? UITabBarController,
           let homeVC = tabBar.viewControllers?[0] as? HomeViewController {
            homeVC.salary = input.text
        }
        self.dismiss(animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
