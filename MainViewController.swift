//
//  MainViewController.swift
//  BrainLockNow
//
//  Created by Grace Olson on 8/20/20.
//  Copyright © 2020 Grace Olson. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var BrainLockImageView: UIImageView!
    
    @IBOutlet weak var tableOfContentsButton: UIButton!
    
    @IBOutlet weak var passwordLengthCounterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableOfContentsButton.layer.cornerRadius = 15
        tableOfContentsButton.layer.borderWidth = 1
        passwordLengthCounterButton.layer.cornerRadius = 15
        passwordLengthCounterButton.layer.borderWidth = 1
        // Do any additional setup after loading the view.
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
