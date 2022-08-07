//
//  ViewController.swift
//  Prework
//
//  Created by rodeo station on 7/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var sizeStepper: UIStepper!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var personalExpenseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func updateSize(_ sender: UIStepper) {
        sizeLabel.text = Int(sender.value).description
        calculateTip()
    }
    
    @IBAction func updateTip(_ sender: Any) {
        calculateTip()
    }
    
    func calculateTip(){
        // Get bill amount, tip percentage, and party size
        let bill = Double (billAmountTextField.text!) ?? 0
        let tipPercentage=Double(Int(tipSlider.value*100))/100
        let size = Double(sizeLabel.text!) ?? 1
        // Get Total tip by multiplying tip * tipPercentage
        let tip = bill*tipPercentage
        let total = bill + tip
        let split=total/size
        // Updaet Label
        tipPercentageLabel.text="\(String(format:"%.0f",tipPercentage*100))%"
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        personalExpenseLabel.text="\(String(format: "$%.2f", split)) per person"
    }
}

