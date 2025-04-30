//
//  TrackViewController.swift
//  Expense_Tracker
//
//  Created by Diwakar Sharma on 12/04/25.
//

import UIKit

class TrackViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    let options = ["Add Income","Add Expense","Add Goals","Add Investment","Add Savings","Add Tax Percentage"]
    let icons = ["salary","expense","goal","vested","savings","tax"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cello = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cello.imageView?.image = UIImage(named: icons[indexPath.row])
        cello.textLabel?.font = UIFont.systemFont(ofSize: 22)
        cello.textLabel?.text = options[indexPath.row]
        return cello
    }
    

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.rowHeight = 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if options[indexPath.row] == "Add Income"{
            performSegue(withIdentifier: "addIncome", sender: nil)
        }
        else if options[indexPath.row] == "Add Expense"{
            performSegue(withIdentifier: "addExpense", sender: nil)
        }
        else if options[indexPath.row] == "Add Goals"{
            performSegue(withIdentifier: "addGoals", sender: nil)
        }
        else if options[indexPath.row] == "Add Investment"{
            performSegue(withIdentifier: "addInvestment", sender: nil)
        }
        else if options[indexPath.row] == "Add Savings"{
            performSegue(withIdentifier: "addSavings", sender: nil)
        }
        else if options[indexPath.row] == "Add Tax Percentage"{
            performSegue(withIdentifier: "addTax", sender: nil)
        }
    }

}
