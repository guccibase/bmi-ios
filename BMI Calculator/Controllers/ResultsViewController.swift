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
    var bmiAdvice: String?
    var resultColor: UIColor?
    

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        background.backgroundColor = resultColor
        
    }
    
    @IBAction func recalculateBMIbtn(_ sender: UIButton) {
    
        self.dismiss(animated: true, completion: nil)
        
    }
    
  

}
