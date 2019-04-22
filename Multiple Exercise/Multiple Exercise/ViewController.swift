//
//  ViewController.swift
//  Multiple Exercise
//
//  Created by Rinaldi-Tierno, Veronica A on 4/3/19.
//  Copyright © 2019 Rinaldi-Tierno, Veronica A. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}

let global = Global()

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    //show answer labels
    @IBOutlet weak var tedAnswer: UILabel!
    @IBOutlet weak var jeffAnswer: UILabel!
    @IBOutlet weak var goldAnswer: UILabel!
    //show answer buttons
    @IBAction func myTedanswer(_ sender: UIButton) {
       tedAnswer.text = "False"
    }
    @IBAction func myJeffanswer(_ sender: UIButton) {
        jeffAnswer.text = "17"
    }
    @IBAction func myGoldanswer(_ sender: UIButton) {
        goldAnswer.text = "California"
    }
    
    
    
    //labels
    @IBOutlet weak var theName: UILabel!
    @IBOutlet weak var theSwitch: UILabel!
    @IBOutlet weak var theSlider: UILabel!
    @IBOutlet weak var thePicker: UILabel!
    //textfield
    @IBOutlet weak var myName: UITextField!
    @IBAction func myButton(_ sender: UIButton) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool){
        theSwitch.text = "Switch: \(global.switchVar)"
        theSlider.text = "Slider: \(global.sliderVar)"
        thePicker.text = "Picker: \(global.pickerVar)"
    }


}

