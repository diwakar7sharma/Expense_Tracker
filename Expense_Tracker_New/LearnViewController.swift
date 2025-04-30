//
//  LearnViewController.swift
//  Expense_Tracker_New
//
//  Created by Diwakar Sharma on 19/04/25.
//

import UIKit
import AVKit
import AVFoundation
class LearnViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    var courses = ["Budgeting Basics","Expense Categorization","Saving Strategies","Budgeting Tools","Debt Management","Investing Basics"]
    var pictures = ["basics","categorise","save","tools","debt","invest"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return courses.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! CourseCell
        cell.titlelabel.text = courses[indexPath.row]
        cell.backgroundImage.image = UIImage(named : pictures[indexPath.row])
        return cell
    }
    
    //Video Code from here
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let course = courses[indexPath.row]
        if let path = Bundle.main.path(forResource: "\(course)", ofType : "mp4"){
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerViewController = AVPlayerViewController()
            playerViewController.player = player
            present(playerViewController, animated: true) {
                player.play()
            }
        } else {
            print("Video file not found")
        }
    }

}
