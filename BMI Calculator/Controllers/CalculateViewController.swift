//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightSliderValue: UISlider!
    @IBOutlet weak var heightSliderValue: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        heightLabel.text = String.init(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))kg"
        
    }
    
   
    @IBAction func calculateBMI(_ sender: UIButton) {
        let weight = weightSliderValue.value
        let height = heightSliderValue.value
        
        print(weight)
        print(height)
        calculatorBrain.calculateBMI(height:height, weight:weight)
        
        self.performSegue(withIdentifier: "gotoResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = String(format: "%.2f", calculatorBrain.getBMIValue())
            destinationVC.bmiAdvice = calculatorBrain.bmi?.advice
            destinationVC.resultColor = calculatorBrain.bmi?.color
            
        }
    }
}

