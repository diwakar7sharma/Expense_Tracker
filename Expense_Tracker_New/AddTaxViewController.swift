//
//  AddTaxViewController.swift
//  Expense_Tracker_New
//
//  Created by Diwakar Sharma on 21/04/25.
//

import UIKit

class AddTaxViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var sliderVal: UISlider!
    @IBAction func slider(_ sender: Any) {
        lbl.text = String(Int(sliderVal.value)) + " %"
    }
    
    @IBAction func DoneBtn(_ sender: Any) {
        if let tabBar = self.presentingViewController as? UITabBarController,
           let homeVC = tabBar.viewControllers?[0] as? HomeViewController {
            homeVC.tax = String(Int(sliderVal.value))
        }
        self.dismiss(animated: true)
    }
}
