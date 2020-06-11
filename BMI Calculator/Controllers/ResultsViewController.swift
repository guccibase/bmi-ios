//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Tahiru nasuru on 6/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculateBMIbtn(_ sender: UIButton) {
    
        self.dismiss(animated: true, completion: nil)
        
    }
    
  

}
