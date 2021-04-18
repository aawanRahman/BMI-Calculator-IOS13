//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    var calculateBMI = CalculateBMI()
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderUsed(_ sender: UISlider) {
        let heightvalue = String(format: "%0.2f", sender.value)
        heightLabel.text = "\(heightvalue) m"
    }
    
    @IBAction func weightSliderUsed(_ sender: UISlider) {
         
         let weightValue = String(format: "%0.1f", sender.value)
        weightLabel.text = "\(weightValue) kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
       calculateBMI.calculateBmiValue(height , weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationViewController = segue.destination as! ResultViewController
            destinationViewController.bmi =  calculateBMI.getBMIValue()
            destinationViewController.advice = calculateBMI.getAdvice()
            destinationViewController.backgroundColor = calculateBMI.getBackground()
        
            
            
        }
    }
}

