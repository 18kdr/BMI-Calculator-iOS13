//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Kartikay Rane on 31/08/25.
//  Copyright © 2025 Angela Yu. All rights reserved.

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    var bmiValue : String!
    var adviceLblText : String!
    var backgroundColor : UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLbl.text = bmiValue
        adviceLbl.text = adviceLblText
        view.backgroundColor = backgroundColor
        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
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
