//
//  PickerViewController.swift
//  Multiple Exercise
//
//  Created by Rinaldi-Tierno, Veronica A on 4/3/19.
//  Copyright © 2019 Rinaldi-Tierno, Veronica A. All rights reserved.
//

import UIKit

var selection:String!


class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
 {
    @IBOutlet weak var pickerVal: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        pickerVal.text = "You selected: " + selection
        global.pickerVar = selection
    }
    

    
    let items = ["Alabama", "California", "New York", "Ohio", "South Dakota", "Texas", "none of these"]


    override func viewDidLoad() {
        picker.delegate = self
        picker.dataSource = self
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
