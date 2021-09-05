//
//  ViewController.swift
//  Prework
//
//  Created by Adham Khalifa on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountText: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // Get bill amount from text field input
        let bill = Double(billAmountText.text!) ?? 0
        
        // Get Total tip by multiplying tip * tripPercentage
        let tripPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tripPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "%.2f", total)
        
    }
    
}

