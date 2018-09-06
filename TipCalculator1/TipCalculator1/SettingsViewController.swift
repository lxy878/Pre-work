//
//  SettingsViewController.swift
//  TipCalculator1
//
//  Created by Xiaoyi Liu on 8/19/18.
//  Copyright © 2018 Xiaoyi Liu. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    @IBOutlet weak var value3: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Save(_ sender: UIButton) {
        defaults.set(value1.text, forKey: "value1")
        defaults.set(Double(value1.text!), forKey: "dvalue1")
        defaults.set(value2.text, forKey: "value2")
        defaults.set(Double(value2.text!), forKey: "dvalue2")
        defaults.set(value3.text, forKey: "value3")
        defaults.set(Double(value3.text!), forKey: "dvalue3")
        defaults.set(true, forKey: "active")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
