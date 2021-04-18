//
//  calculateBMI.swift
//  BMI Calculator
//
//  Created by aawan on 18/4/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBMI {
    var bmi : BMIValues?
    
    func getBMIValue() -> String {
        return String(format: "%0.2f", bmi?.bmi ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Recalclulate the BMI Value"
    }
    
    func getBackground() -> UIColor {
        return bmi?.backgroundColor ?? #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
    }
    
    mutating func calculateBmiValue(_ height : Float , _ weight : Float)  {
        let bmiValue = weight / (height * height)
         if bmiValue < 18.0 {
             bmi = BMIValues(bmiValue, "UNderweight! Eat some foods.", #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
         }else if bmiValue < 24.0 {
             bmi = BMIValues(bmiValue, "Healty! Chill.", #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
         } else {
             bmi = BMIValues(bmiValue, "Obese! Try to loose some weight.", #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
         }
    }
    
}
