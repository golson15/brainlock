//
//  CounterViewController.swift
//  BrainLockNow
//
//  Created by Grace Olson on 8/20/20.
//  Copyright © 2020 Grace Olson. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var characterLabel: UILabel!
    
    @IBAction func calculateDidTap(_ sender: Any) {
        let count = textField.text!.count
        countLabel.text = String(count)
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateButton.layer.cornerRadius = 15
        calculateButton.layer.borderWidth = 1
        
        
        
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
