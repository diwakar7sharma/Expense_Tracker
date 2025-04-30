//
//  HomeViewController.swift
//  Expense_Tracker
//
//  Created by Diwakar Sharma on 12/04/25.
//

import UIKit

class HomeViewController: UIViewController {
    var salary: String!
    var currency: String = "₹"
    var tax: String = "tax %"
    var expense: String!
    var savings: String!
    var invest: String!
    var rate: String!
    var period: String!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateSal()
        updateInvest()
        updateGoal()
    }
    func updateSal(){
        if let salary = salary{
            lbl.text = "\(currency) \(salary)"
            lbl1.text = "\(tax)"+" %"
            if let expense = expense{
                lbl2.text = "-\(currency)\(expense)"
            }
            else{
                lbl2.text = "0"
            }
            if let savings = savings{
                lbl3.text = "+\(currency)\(savings)"
            }
            else{
                lbl3.text = "0"
            }
            if tax == "tax %"{
                lbl4.text = lbl.text
            }
            else{
                let left = Int(salary)! - (Int(tax)! * Int(salary)!)/100
                if ((Int(expense)! * 100)/left > 51) {
                    status.text = "You're Overspending!, Save More!"
                    status.textColor = .red
                    }
                else
                { 
                    status.text = "Good job!, You're doing great!"
                    status.textColor = .green
                    }
                lbl4.text = "\(currency) \(String(Int(left) - (Int(expense) ?? 0)))"
            }
        } else {
            lbl.text = "--,---"
            lbl1.text = "tax %"
            lbl2.text = "expense"
            lbl3.text = "savings"
            lbl4.text = "Left out amount"
            status.text = "status"
        }
    }
    
    //Investment starts
    func updateInvest(){
        if let invest = invest{
            vestedAmt.text = "\(currency)\(invest)"
            if let rate = rate{
                roi.text = "\(rate)%"
                if let period = period{
                    time.text = "\(period) years"
                }
                
            }
        }
    }
    
    @IBAction func checkBtn(_ sender: Any) {
        if let invest = invest, let rate = rate, let period = period,
           let principal = Double(invest),
           let annualRate = Double(rate),
           let years = Double(period) {
            
            let monthlyRate = annualRate / (12 * 100)
            let totalMonths = years * 12
            
            let compoundFactor = pow(1 + monthlyRate, totalMonths)
            let sipMultiplier = (compoundFactor - 1) / monthlyRate
            let futureValue = principal * sipMultiplier * (1 + monthlyRate)
            
            let totalInvested = principal * totalMonths

            investedlbl.text = "\(currency) \(String(format: "%.2f", futureValue))"
            wealthCreated.text = "Wealth Created : \(currency) \(String(format: "%.2f", futureValue - totalInvested))"
        }
    }
    
    //Goals
    func updateGoal(){
        
    }
    
    @IBOutlet weak var wealthCreated: UILabel!
    @IBOutlet weak var investedlbl: UILabel!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var vestedAmt: UILabel!
    @IBOutlet weak var roi: UILabel!
    @IBOutlet weak var time: UILabel!
}
