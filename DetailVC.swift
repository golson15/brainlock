//
//  DetailVC.swift
//  BrainLockNow
//
//  Created by Grace Olson on 8/3/20.
//  Copyright © 2020 Grace Olson. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    var category: BrainLock?
    
    @IBOutlet weak var lblBrainLock: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var backButtonOutlet: UIBarButtonItem!
    
    @IBOutlet weak var fowardButtonOutlet: UIBarButtonItem!
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        for i in categoryArray {
            if i.categoryIndex! > 0 {
                i.categoryIndex = i.categoryIndex! - 1
                lblBrainLock.text = categoryArray[category!.categoryIndex!].categoryText
            }
        }
    }
    
    //figure out how to scroll to the top after each forward or backward button tap

    @IBAction func fowardButtonDidTap(_ sender: Any) {
        for i in categoryArray {
            if i.categoryIndex! < categoryArray.count - 1 {
                  i.categoryIndex = i.categoryIndex! + 1
                  lblBrainLock.text = categoryArray[category!.categoryIndex!].categoryText
              }
          }
    }
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
        // Do any additional setup after loading the view.
        
        lblBrainLock.text = "\((category?.categoryText)!)"
        
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        NSLayoutConstraint(item: lblBrainLock!, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: screenWidth - 25).isActive = true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
