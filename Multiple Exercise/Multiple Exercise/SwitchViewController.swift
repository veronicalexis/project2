//
//  SwitchViewController.swift
//  Multiple Exercise
//
//  Created by Rinaldi-Tierno, Veronica A on 4/3/19.
//  Copyright © 2019 Rinaldi-Tierno, Veronica A. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {
    @IBOutlet weak var switchVal: UILabel!
    @IBAction func mySwitch(_ sender: UISwitch) {
        if sender.isOn {
            global.switchVar = "True"
        }
        else {
            global.switchVar = "False"
        }
        switchVal.text = global.switchVar
    
    }
    
    
    
    override func viewDidLoad() {
        global.switchVar = "False"
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
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
