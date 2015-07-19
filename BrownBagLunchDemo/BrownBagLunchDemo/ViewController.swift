//
//  ViewController.swift
//  BrownBagLunchDemo
//
//  Created by Bliss Chapman on 7/18/15.
//  Copyright (c) 2015 Bliss Chapman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderValueChanged(redSlider)
    }
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        view.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1.0)
    }
}

