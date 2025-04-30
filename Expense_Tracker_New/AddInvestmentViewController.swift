//
//  AddInvestmentViewController.swift
//  Expense_Tracker_New
//
//  Created by Diwakar Sharma on 21/04/25.
//

import UIKit

class AddInvestmentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func ROIsld(_ sender: Any) {
        roiPer.text = "\(Int(ROI.value)) %"
    }
    
    @IBAction func YOIsld(_ sender: Any) {
        yoiPer.text = "\(Int(YOI.value)) years"
    }
    
    @IBAction func DoneBtn(_ sender: Any) {
        if let tabBar = self.presentingViewController as? UITabBarController,
        let homeVC = tabBar.viewControllers?[0] as? HomeViewController {
            homeVC.invest = principal.text ?? "0"
            homeVC.period = String(Int(YOI.value))
            homeVC.rate = String(Int(ROI.value))
        }
        self.dismiss(animated: true)
    }
    @IBOutlet weak var ROI: UISlider!
    @IBOutlet weak var YOI: UISlider!
    @IBOutlet weak var principal: UITextField!
    @IBOutlet weak var roiPer: UILabel!
    @IBOutlet weak var yoiPer: UILabel!
}
