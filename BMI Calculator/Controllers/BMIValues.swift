//
//  BMIValues.swift
//  BMI Calculator
//
//  Created by aawan on 18/4/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct BMIValues {
    var bmi : Float?
    var advice : String?
    var backgroundColor : UIColor
    init(_ bmiValue : Float ,_ adviceValue : String ,_ backgroundValue : UIColor) {
        bmi = bmiValue
        advice = adviceValue
        backgroundColor = backgroundValue
    }
    
}
