//
//  MoreViewController.swift
//  Expense_Tracker
//
//  Created by Diwakar Sharma on 12/04/25.
//

import UIKit

class MoreViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var icons = ["person.crop.circle","dollarsign.arrow.trianglehead.counterclockwise.rotate.90","phone","gear","info","square.and.arrow.up"]
    var sects = ["Profile","Change Currency","Contact Us","Settings","About Us","Logout"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return sects.count
        
    }
    @IBOutlet weak var lblm: UILabel!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if sects[indexPath.row] == "Logout"{
            let alrt = UIAlertController(title: "Logout", message: "Are you sure you want to logout?", preferredStyle: .alert)
            let yes = UIAlertAction(title: "Yes", style: .default){ _ in self.performSegue(withIdentifier: "logout", sender: nil)}
            let no = UIAlertAction(title: "No", style: .cancel)
            alrt.addAction(yes)
            alrt.addAction(no)
            present(alrt, animated: true)
        }
        if sects[indexPath.row] == "About Us"{
            performSegue(withIdentifier: "about", sender: nil)
        }
        else if sects[indexPath.row] == "Change Currency"{
            let alrt = UIAlertController(title: "Change Currency", message: "Choose your currency", preferredStyle: .actionSheet)
            let dollar = UIAlertAction(title: "$", style: .default) { _ in
                if let tabBar = self.tabBarController,
                   let homeVC = tabBar.viewControllers?[0] as? HomeViewController {
                    homeVC.currency = "$"
                    homeVC.updateSal()
                }
            }
            let rupee = UIAlertAction(title: "₹", style: .default){ _ in
                if let tabBar = self.tabBarController,
                   let homeVC = tabBar.viewControllers?[0] as? HomeViewController {
                    homeVC.currency = "₹"
                    homeVC.updateSal()
                }
            }
            let yen = UIAlertAction(title: "¥", style: .default){_ in
                if let tabBar = self.tabBarController,
                   let homeVC = tabBar.viewControllers?[0] as? HomeViewController {
                    homeVC.currency = "¥"
                    homeVC.updateSal()
                }
            }
            let euro = UIAlertAction(title: "€", style: .default){_ in 
                if let tabBar = self.tabBarController, let homeVC = tabBar.viewControllers?[0] as? HomeViewController {
                    homeVC.currency = "€"
                    homeVC.updateSal()
                }
            }
            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            alrt.addAction(euro)
            alrt.addAction(dollar)
            alrt.addAction(rupee)
            alrt.addAction(yen)
            alrt.addAction(cancel)
            present(alrt, animated: true)
            
        }
        else if sects[indexPath.row] == "Settings"{
            
        }
        lblm.text = sects[indexPath.row]
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellObj = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cellObj.textLabel?.text = sects[indexPath.row]
        cellObj.textLabel?.font = UIFont.systemFont(ofSize: 19)
        cellObj.imageView?.image = UIImage(systemName : icons[indexPath.row])
        return cellObj
    }
}
