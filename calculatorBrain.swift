//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Tahiru nasuru on 6/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
   
    mutating func calculateBMI(height:Float, weight:Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "gain some", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue >= 18.5 && bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Nomal - You're Good", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else{
            bmi = BMI(value: bmiValue, advice: "lose some", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))

        }
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "You Broke The Calculator"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0.0
    }
    
    
}
