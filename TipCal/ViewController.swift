//
//  ViewController.swift
//  TipCal
//
//  Created by Micah Peoples on 1/6/17.
//  Copyright © 2017 micah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipText: UILabel!
    @IBOutlet weak var totalText: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.22]
        let bill = Double(textField.text!) ?? 0
        let tipPercentage = Double(tipPercentages[segmentedControl.selectedSegmentIndex])
        let tip = tipPercentage*bill
        let total = bill + tip
        
        totalText.text = String(format: "$%.2f", total)
        tipText.text = String(format: "$%.2f", tip)
        
    }

    @IBAction func onSelectSegment(_ sender: Any) {
        calculateTip(view)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(false)
    }
}

