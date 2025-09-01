//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Kartikay Rane on 31/08/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    mutating func getBMI(height: Float,weight: Float){
        var bmiValue = Double(weight / pow(height, 2))
        bmiValue = (10 * bmiValue).rounded() / 10
        setBMI(bmiVal: bmiValue)
    }
    
    mutating func setBMI(bmiVal: Double){
        if bmiVal < 18.5 {
            bmi = BMI(
                value: bmiVal,
                advice: "Underweight - Eat some more snacks",
                color: .red
            )

        }else if bmiVal <= 24.9 {
            bmi = BMI(
                value: bmiVal,
                advice: "Normal - Keep up the good work!",
                color: .green
            )
        }else{
            bmi = BMI(
                value: bmiVal,
                advice: "Overweight - Eat less food",
                color: .red
            )
        }
    }
}


