//
//  ViewController.swift
//  tip calculator
//
//  Created by Alan Bergsneider on 9/14/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get initial bill amount, then calculate the tip and total values, then update these values into the app
        // let is how variables are initialized
        // ?? 0 sets default value to 0 incase invalid input received, Double() converts text input to a decimal value
        
        let bill = Double(billAmountTextField.text!) ?? 0
        // next line utilizes an array
        let tipPercentages = [0.15, 0.18, 0.20]
        // .selectedSegmentIndex uses whichever option as the index to pull from the array
        let tip = bill * tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]
        let total = bill + tip
        // Normally inputting variables into a string: "\(variable)"
        // String(format, Args) allows for string formatting and variable inputting, %f for decimal, %d for int, %@ for string, .2 before f denotes 2 decimal precision
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
}

