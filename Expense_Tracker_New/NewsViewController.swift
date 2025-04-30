//
//  NewsViewController.swift
//  Expense_Tracker_New
//
//  Created by Diwakar Sharma on 19/04/25.
//

import UIKit
import WebKit
class NewsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seg.selectedSegmentIndex = 0
        Segmented(seg)
    }
    
    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var newsview: WKWebView!
    var urlObject:URL!
    var urlRequest:URLRequest!
    @IBAction func Segmented(_ sender: Any) {
        if seg.selectedSegmentIndex == 0{
            urlObject = URL(string: "https://bettermoneyhabits.bankofamerica.com/en/saving-budgeting/ways-to-save-money")
            urlRequest = URLRequest(url: urlObject!)
            newsview.load(urlRequest)
        }
        else {
            urlObject = URL(string: "https://www.yesbank.in/blogs/savings-account/tips-to-fight-inflation-and-save-money")
            urlRequest = URLRequest(url: urlObject!)
            newsview.load(urlRequest)
        }
    }
}
