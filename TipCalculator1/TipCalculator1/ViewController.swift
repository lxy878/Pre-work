//
//  ViewController.swift
//  TipCalculator1
//
//  Created by Xiaoyi Liu on 8/19/18.
//  Copyright © 2018 Xiaoyi Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputBill: UITextField!
    @IBOutlet weak var tipPerc: UISegmentedControl!
    @IBOutlet weak var totalP: UILabel!
    @IBOutlet weak var tip1: UILabel!
    @IBOutlet weak var tip2: UILabel!
    @IBOutlet weak var tip3: UILabel!
    
    var tipPercentages = [0.18, 0.20, 0.25]
    let defaults = UserDefaults.standard
    let VCSettings = SettingsViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.inputBill.becomeFirstResponder()
        inputBill.text = defaults.string(forKey: "bill") ?? ""
        VCSettings.defaults.set(false, forKey: "active")
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var isActive = VCSettings.defaults.bool(forKey: "active")
        if(isActive == true){
            tipPerc.setTitle("\(VCSettings.defaults.string(forKey: "value1") ?? "18")%", forSegmentAt: 0)
            tipPerc.setTitle("\(VCSettings.defaults.string(forKey: "value2") ?? "20")%", forSegmentAt: 1)
            tipPerc.setTitle("\(VCSettings.defaults.string(forKey: "value3") ?? "25")%", forSegmentAt: 2)
            tipPercentages[0] = VCSettings.defaults.double(forKey: "dvalue1")*0.01
            tipPercentages[1] = VCSettings.defaults.double(forKey: "dvalue2")*0.01
            tipPercentages[2] = VCSettings.defaults.double(forKey: "dvalue3")*0.01
            VCSettings.defaults.set(false, forKey: "active")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func TipCalculator(_ sender: Any) {
        let bill = Double(inputBill.text!) ?? 0
        let tip = bill * tipPercentages[tipPerc.selectedSegmentIndex]
        let total = tip + bill
        
        tip1.text = String(format: "$%.2f", tip)
        tip2.text = String(format: "$%.2f", tip/2)
        tip3.text = String(format: "$%.2f", tip/3)
        totalP.text = String(format: "$%.2f", total)
        defaults.set(inputBill.text, forKey: "bill")
    }
    
    
}

