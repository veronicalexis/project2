//
//  SliderViewController.swift
//  Multiple Exercise
//
//  Created by Rinaldi-Tierno, Veronica A on 4/3/19.
//  Copyright © 2019 Rinaldi-Tierno, Veronica A. All rights reserved.
//

import UIKit



class SliderViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var sliderVal: UILabel!
    @IBAction func mySlider(_ sender: UISlider) {
        global.sliderVar = Int(sender.value)
        sliderVal.text = "\(global.sliderVar)"

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
